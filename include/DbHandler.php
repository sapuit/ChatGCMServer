<?php

/**
 * Class to handle all db operations
 * This class will have CRUD methods for database tables
 *
 * @author Ravi Tamada
 * @link URL Tutorial link
 */
class DbHandler {

    private $conn;

    function __construct() {
        require_once dirname(__FILE__) . '/DbConnect.php';
        // opening db connection
        $db = new DbConnect();
        $this->conn = $db->connect();
    }

    // creating new user if not existed
    public function createUser($name, $email) {
        $response = array();

        // First check if user already existed in db
        if (!$this->isUserExists($email)) {
            // insert query
            $stmt = $this->conn->prepare("INSERT INTO users(name, email) values(?, ?)");
            $stmt->bind_param("ss", $name, $email);

            $result = $stmt->execute();

            $stmt->close();

            // Check for successful insertion
            if ($result) {
                // User successfully inserted
                $response["error"] = false;
                $response["user"] = $this->getUserByEmail($email);
            } else {
                // Failed to create user
                $response["error"] = true;
                $response["message"] = "Oops! An error occurred while registereing";
            }
        } else {
            // User with same email already existed in the db
            $response["error"] = false;
            $response["user"] = $this->getUserByEmail($email);
        }

        return $response;
    }

    // updating user GCM registration ID
    public function updateGcmID($user_id, $gcm_registration_id) {
        $response = array();
        $stmt = $this->conn->prepare("UPDATE users SET gcm_registration_id = ? WHERE user_id = ?");
        $stmt->bind_param("si", $gcm_registration_id, $user_id);

        if ($stmt->execute()) {
            // User successfully updated
            $response["error"] = false;
            $response["message"] = 'GCM registration ID updated successfully';
        } else {
            // Failed to update user
            $response["error"] = true;
            $response["message"] = "Failed to update GCM registration ID";
            $stmt->error;
        }
        $stmt->close();

        return $response;
    }

    // adding the user to chat room
    public function joinChatRoom($chat_room_id, $user_id) {
        $response = array();
        $stmt = $this->conn->prepare("SELECT * FROM chat_room_people crp WHERE crp.chat_room_id = ? AND crp.user_id = ?");
        $stmt->bind_param("ii", $chat_room_id, $user_id);
        $stmt->execute();
        $stmt->store_result();
        if ($stmt->num_rows > 0) {
            $response['error'] = false;
            $response['message'] = 'User joined chat room successfully!';
        } else {
            $stmt = $this->conn->prepare("INSERT INTO chat_room_people(chat_room_id, user_id) values(?, ?)");
            $stmt->bind_param("ii", $chat_room_id, $user_id);
            $result = $stmt->execute();
            if ($result) {
                $response['error'] = false;
                $response['message'] = 'User joined chat room successfully!';
            } else {
                $response['error'] = true;
                $response['message'] = 'Failed to join chat room!';
            }
        }
        $stmt->close();

        return $response;
    }

    // commenting on a chat room
    public function comment($user_id, $chat_room_id, $comment) {
        $response = array();

        $stmt = $this->conn->prepare("INSERT INTO comments (chat_room_id, user_id, comment) values(?, ?, ?)");
        $stmt->bind_param("iis", $chat_room_id, $user_id, $comment);

        $result = $stmt->execute();

        if ($result) {
            $response['error'] = false;
            $response['message'] = 'Comment posted successfully';

            // get the comment
            $comment_id = $this->conn->insert_id;
            $stmt = $this->conn->prepare("SELECT comment_id, user_id, chat_room_id, comment, created_at FROM comments WHERE comment_id = ?");
            $stmt->bind_param("i", $comment_id);
            if ($stmt->execute()) {
                $stmt->bind_result($comment_id, $user_id, $chat_room_id, $comment, $created_at);
                $stmt->fetch();
                $tmp = array();
                $tmp['comment_id'] = $comment_id;
                $tmp['chat_room_id'] = $chat_room_id;
                $tmp['user_id'] = $user_id;
                $tmp['comment'] = $comment;
                $tmp['created_at'] = $created_at;
                $response['comment'] = $tmp;
            }
        } else {
            $response['error'] = true;
            $response['message'] = 'Failed to post comment';
        }

        return $response;
    }
    
    public function getAllChatrooms() {
        $stmt = $this->conn->prepare("SELECT * FROM chat_rooms");
        $stmt->execute();
        $tasks = $stmt->get_result();
        $stmt->close();
        return $tasks;
    }

    // getting single chat room
    function getChatRoom($chat_room_id) {
        $stmt = $this->conn->prepare("SELECT cr.chat_room_id, cr.name, cr.created_at as chat_room_created_at, u.name as user_name, c.* FROM chat_rooms cr LEFT JOIN comments c ON c.chat_room_id = cr.chat_room_id LEFT JOIN users u ON u.user_id = c.user_id WHERE cr.chat_room_id = ?");
        $stmt->bind_param("i", $chat_room_id);
        $stmt->execute();
        $tasks = $stmt->get_result();
        $stmt->close();
        return $tasks;
    }

    /**
     * Checking for duplicate user by email address
     * @param String $email email to check in db
     * @return boolean
     */
    private function isUserExists($email) {
        $stmt = $this->conn->prepare("SELECT user_id from users WHERE email = ?");
        $stmt->bind_param("s", $email);
        $stmt->execute();
        $stmt->store_result();
        $num_rows = $stmt->num_rows;
        $stmt->close();
        return $num_rows > 0;
    }

    /**
     * Fetching user by email
     * @param String $email User email id
     */
    public function getUserByEmail($email) {
        $stmt = $this->conn->prepare("SELECT user_id, name, email, created_at FROM users WHERE email = ?");
        $stmt->bind_param("s", $email);
        if ($stmt->execute()) {
            // $user = $stmt->get_result()->fetch_assoc();
            $stmt->bind_result($user_id, $name, $email, $created_at);
            $stmt->fetch();
            $user = array();
            $user["user_id"] = $user_id;
            $user["name"] = $name;
            $user["email"] = $email;
            $user["created_at"] = $created_at;
            $stmt->close();
            return $user;
        } else {
            return NULL;
        }
    }

}

?>
