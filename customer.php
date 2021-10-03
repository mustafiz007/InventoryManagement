<?php



    include ('navigation.php');

    $conn= connect();

    session_start();

    $id=$_SESSION['userid'];

    $sql= "select * from users_info where id = '$id'";

    $thisUser = mysqli_fetch_assoc($conn->query($sql));

    if($thisUser['is_admin']==0){

        header('location:dashboard.php');

    }



?>