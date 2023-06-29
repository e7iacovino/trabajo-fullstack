<?php


    require_once 'source/session.php';
    require_once 'source/db_connect.php';

if(isset($_POST["delete"])) 
{
	$id = $_SESSION['id'];
	$con = mysqli_connect("127.0.0.1", "root", "", "transaccion");
	$sql = "DELETE FROM users WHERE id = '$id'";
	$result = mysqli_query($con, $sql);
	if (ini_get("session.use_cookies")) {
    $params = session_get_cookie_params();
    setcookie(session_name(), '', time() - 42000,
        $params["path"], $params["domain"],
        $params["secure"], $params["httponly"]
    );
    Header("Location: index.html");
}}
else
{
if(isset($_POST["close-session"])) 
{
	if (ini_get("session.use_cookies")) {
    $params = session_get_cookie_params();
    setcookie(session_name(), '', time() - 42000,
        $params["path"], $params["domain"],
        $params["secure"], $params["httponly"]
    );
    Header("Location: index.html");
}

// Finalmente, destruir la sesión.
session_destroy();
}
else
{
$id = $_SESSION['id'];
$con = mysqli_connect("127.0.0.1", "root", "", "transaccion");

$sql="SELECT * FROM users WHERE id='$id'";
$query=mysqli_query($con, $sql);

$row=mysqli_fetch_array($query);

$USERNAME=$_POST['user-name'];
$EMAIL=$_POST['user-email'];
$HABILIDADES=$_POST['user-info'];
$PASSWORD=$_POST['user-pass'];
$hashed_password = password_hash($PASSWORD, PASSWORD_DEFAULT);

//$sql="UPDATE users SET  user-pass='$PASSWORD', user-name='$USERNAME', email='$EMAIL', habilidades='$HABILIDADES' WHERE id='$id'";
if ($USERNAME=="" or $EMAIL=="") {
	print("Campos incompletos");
}
else
{
	if($PASSWORD=="")
	{
		$sql="UPDATE users SET username='$USERNAME', email='$EMAIL', habilidades='$HABILIDADES' WHERE id='$id'";
	}
	else
	{
		$sql="UPDATE users SET username='$USERNAME', email='$EMAIL', habilidades='$HABILIDADES', password='$hashed_password' WHERE id='$id'";
	}
	$query=mysqli_query($con,$sql);

    if($query){
        Header("Location: main_win.php");
    }
}
}}

?>
