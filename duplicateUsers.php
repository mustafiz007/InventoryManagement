

  <?php

  include ('auth/connection.php');

  $conn=connect();

  $user = $_POST['username'];

  // print_r($user);

  $sql = "select * from users_info where u_name='$user' ";

  $flag = $conn->query($sql);

  $retData['success']=false;

  if(mysqli_num_rows($flag)>0){

      $retData['success']=true;   // jodi onno kaw k pai tkn rows 0 r besi hobe

  }

  echo  json_encode($retData);



  ?>