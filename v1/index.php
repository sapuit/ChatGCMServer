<?php

error_reporting(-1);
ini_set('display_errors', 'On');

require_once '../include/DbHandler.php';
require '.././libs/Slim/Slim.php';

\Slim\Slim::registerAutoloader();

$app = new \Slim\Slim();

// user login
$app->post('/user/login', function() use ($app) {
    // check for required params
    verifyRequiredParams(array('name', 'email'));

    // reading post params
    $name = $app->request->post('name');
    $email = $app->request->post('email');

    // validating email address
    validateEmail($email);

    $db = new DbHandler();
    $response = $db->createUser($name, $email);

    // echo json response
    echoRespnse(200, $response);
});


// updating user
$app->put('/user/:id', function($user_id) use ($app) {
    global $app;
    // check for required params
    verifyRequiredParams(array('gcm_registration_id'));
    
    // reading post params
    $gcm_registration_id = $app->request->put('gcm_registration_id');

    $db = new DbHandler();
    $response = $db->updateGcmID($user_id, $gcm_registration_id);

    // echo json response
    echoRespnse(200, $response);
});

// Get all chat rooms
$app->get('/chat_rooms', function() {
    global $user_id;
    $response = array();
    $db = new DbHandler();

    // fetching all user tasks
    $result = $db->getAllChatrooms();

    $response["error"] = false;
    $response["chat_rooms"] = array();

    // looping through result and preparing tasks array
    while ($chat_room = $result->fetch_assoc()) {
        $tmp = array();
        $tmp["chat_room_id"] = $chat_room["chat_room_id"];
        $tmp["name"] = $chat_room["name"];
        $tmp["created_at"] = $chat_room["created_at"];
        array_push($response["chat_rooms"], $tmp);
    }

    echoRespnse(200, $response);
});

// Join a chat room
$app->post('/chat_rooms/:id/join', function($chat_room_id) {
    global $app;
    $db = new DbHandler();

    verifyRequiredParams(array('user_id'));

    $user_id = $app->request->post('user_id');

    $response = $db->joinChatRoom($chat_room_id, $user_id);

    echoRespnse(200, $response);
});

// Comment in a chat room
$app->post('/chat_rooms/:id/comment', function($chat_room_id) {
    global $app;
    $db = new DbHandler();

    verifyRequiredParams(array('user_id', 'comment'));

    $user_id = $app->request->post('user_id');
    $comment = $app->request->post('comment');

    $response = $db->comment($user_id, $chat_room_id, $comment);

    echoRespnse(200, $response);
});

// Get single chat room details including all comments
$app->get('/chat_rooms/:id', function($chat_room_id) {
    global $app;
    $db = new DbHandler();

    $result = $db->getChatRoom($chat_room_id);

    $response["error"] = false;
    $response["comments"] = array();
    $response['chat_room'] = array();

    $i = 0;
    // looping through result and preparing tasks array
    while ($chat_room = $result->fetch_assoc()) {
        // adding chat room node
        if ($i == 0) {
            $tmp = array();
            $tmp["chat_room_id"] = $chat_room["chat_room_id"];
            $tmp["name"] = $chat_room["name"];
            $tmp["created_at"] = $chat_room["chat_room_created_at"];
            $response['chat_room'] = $tmp;
        }

        // comment node
        $cmt = array();
        $cmt["comment"] = $chat_room["comment"];
        $cmt["comment_id"] = $chat_room["comment_id"];
        $cmt["created_at"] = $chat_room["created_at"];

        // user node
        $user = array();
        $user['user_id'] = $chat_room['user_id'];
        $user['name'] = $chat_room['user_name'];
        $cmt['user'] = $user;

        // comment
        $comment = array();
        $comment['comment'] = $cmt;

        array_push($response["comments"], $comment);
    }

    echoRespnse(200, $response);
});

/**
 * Verifying required params posted or not
 */
function verifyRequiredParams($required_fields) {
    $error = false;
    $error_fields = "";
    $request_params = array();
    $request_params = $_REQUEST;
    // Handling PUT request params
    if ($_SERVER['REQUEST_METHOD'] == 'PUT') {
        $app = \Slim\Slim::getInstance();
        parse_str($app->request()->getBody(), $request_params);
    }
    foreach ($required_fields as $field) {
        if (!isset($request_params[$field]) || strlen(trim($request_params[$field])) <= 0) {
            $error = true;
            $error_fields .= $field . ', ';
        }
    }

    if ($error) {
        // Required field(s) are missing or empty
        // echo error json and stop the app
        $response = array();
        $app = \Slim\Slim::getInstance();
        $response["error"] = true;
        $response["message"] = 'Required field(s) ' . substr($error_fields, 0, -2) . ' is missing or empty';
        echoRespnse(400, $response);
        $app->stop();
    }
}

/**
 * Validating email address
 */
function validateEmail($email) {
    $app = \Slim\Slim::getInstance();
    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        $response["error"] = true;
        $response["message"] = 'Email address is not valid';
        echoRespnse(400, $response);
        $app->stop();
    }
}

/**
 * Echoing json response to client
 * @param String $status_code Http response code
 * @param Int $response Json response
 */
function echoRespnse($status_code, $response) {
    $app = \Slim\Slim::getInstance();
    // Http response code
    $app->status($status_code);

    // setting response content type to json
    $app->contentType('application/json');

    echo json_encode($response);
}

$app->run();
?>