<?php

include_once("config.php");

$response = ["success" => false]; // Default response

if (isset($_POST["email"]) && isset($_POST["password"])) {
    $email = $conn->real_escape_string($_POST["email"]);
    $password = $conn->real_escape_string($_POST["password"]);

    // Insert query
    $query = "INSERT INTO `users` (`user_email`, `user_pass`) VALUES ('$email', '$password')";
    
    if ($conn->query($query) === TRUE) {
        $response["success"] = true;
    } else {
        $response["message"] = "Error: " . $conn->error;
    }
} else {
    $response["message"] = "Required fields missing";
}

echo json_encode($response);
