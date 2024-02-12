<?php
// Database configuration
$dbHost = "localhost";
$dbUsername = "root";
$dbPassword = "";
$dbName = "hrm_db";

// Connect to the database
$conn = new mysqli($dbHost, $dbUsername, $dbPassword, $dbName);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if (isset($_POST["submit"])) {
    $uploadDir = "uploads/"; // The directory where you want to store the uploaded files
$uid = $_POST['uid'];
echo $uid; 
    // Create the uploads directory if it doesn't exist
    if (!is_dir($uploadDir)) {
        mkdir($uploadDir, 0755, true);
    }

    $fileName = $_FILES["file"]["name"];
    $tempFilePath = $_FILES["file"]["tmp_name"];
    $fileSize = $_FILES["file"]["size"];
    $fileType = $_FILES["file"]["type"];
    

    // Generate a unique filename to prevent overwriting
    $newFileName = uniqid() . "_" . $fileName;

    $targetFilePath = $uploadDir . $newFileName;

    // Check if file is valid
    if ($fileSize > 0) {
        if (move_uploaded_file($tempFilePath, $targetFilePath)) {
            // File uploaded successfully, insert file path into database
            $insertQuery = "UPDATE `form` SET `file_path`='$targetFilePath' WHERE `empId`='$uid' ";
            if ($conn->query($insertQuery) === TRUE) {
                echo "File uploaded successfully!";
                header("location:http://localhost/hrm/amvion/leaverequest.php?uid=1");
            } else {
                echo "Error: " . $insertQuery . "<br>" . $conn->error;
            }
        } else {
            echo "Error uploading the file.";
        }
    } else {
        echo "Invalid file.";
    }
}

$conn->close();
?>
