<?php
error_reporting(-1);
ini_set('display_errors', 'On');
?>

<html>
    <head>
        <title>Google Cloud Messaging 3.0 | AndroidHive</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href='https://fonts.googleapis.com/css?family=Raleway:400,800,100' rel='stylesheet' type='text/css'>
        <link href='style.css' rel='stylesheet' type='text/css'>
        <script type="text/javascript" src="https://code.jquery.com/jquery-2.2.0.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                
                getChatroomMessages($('#topics li:first').attr('id'));
                
                function getChatroomMessages(id){
                    
                }
            });
        </script>
    </head>
    <body>
        <div class="header">
            <label class="logo">ANDROIDHIVE</label>
            <span>Google Cloud Messaging</span>
            <span class="small">Sending push notifications using Android, PHP & MySQL</span>
        </div>

        <div class="topics">
            <span class="heading">Sending message to a `topic`</span>
            <div class="box">
                <div class="usr_container">
                    <ul id="topics">
                        <?php
                        require_once __DIR__ . '/demo.php';
                        $demo = new Demo();
                        $chatrooms = $demo->getAllChatRooms();
                        foreach ($chatrooms as $key => $chatroom) {
                            $cls = $key == 0 ? 'selected' : '';
                            ?>
                            <li id="<?= $chatroom['chat_room_id'] ?>" class="<?= $cls ?>">
                                <?= $chatroom['name'] ?>
                            </li>
                            <?php
                        }
                        ?>
                    </ul>
                </div>
                <div class="msg_container">
                    <ul id="topic_messages">
                        <li class="others">
                            <label class="name">Ravi Tamada</label>
                            <div class="message">
                                Hello, how are you doing?
                            </div>
                            <div class="clear"></div>
                        </li>
                        <li class="others">
                            <label class="name">Ravi Tamada</label>
                            <div class="message">
                                Hello, how are you doing?
                            </div>
                            <div class="clear"></div>
                        </li>
                        <li class="self">
                            <label class="name">Ravi Tamada</label>
                            <div class="message">
                                Go to https://github.com/account/applications/new then create a new application. Fill required input, then copy your created application credentials (App ID and App Secret) and set them on HybridAuth config file.
                            </div>
                            <div class="clear"></div>
                        </li>
                        <li class="others">
                            <label class="name">John Henry</label>
                            <div class="message">
                                looks cool :)
                            </div>
                            <div class="clear"></div>
                        </li>
                        <li class="others">
                            <label class="name">Ravi Tamada</label>
                            <div class="message">
                                Hello, how are you doing?
                            </div>
                            <div class="clear"></div>
                        </li>
                        <li class="others">
                            <label class="name">Ravi Tamada</label>
                            <div class="message">
                                Hello, how are you doing?
                            </div>
                            <div class="clear"></div>
                        </li>
                        <li class="self">
                            <label class="name">Ravi Tamada</label>
                            <div class="message">
                                Go to https://github.com/account/applications/new then create a new application. Fill required input, then copy your created application credentials (App ID and App Secret) and set them on HybridAuth config file.
                            </div>
                            <div class="clear"></div>
                        </li>
                        <li class="others">
                            <label class="name">John Henry</label>
                            <div class="message">
                                looks cool :)
                            </div>
                            <div class="clear"></div>
                        </li>
                    </ul>
                </div>
                <div class="send_container">
                    <textarea placeholder="Type a message here"></textarea>
                    <input type="button" value="Send"/>
                </div>
                <div class="clear"></div>
            </div>
            <span class="heading">Sending message to Single User</span>
            <span class="heading">Sending message to Multiple Users</span>
        </div>
    </body>
</html>
