<?php 
    require_once 'source/session.php';
    require_once 'source/db_connect.php';

$id = $_SESSION['id'];
$con = mysqli_connect("127.0.0.1", "root", "", "transaccion");

$sql="SELECT * FROM users WHERE id='$id'";
$query=mysqli_query($con, $sql);

$row=mysqli_fetch_array($query);

if($id == '' || !isset($_SESSION) || session_status() === PHP_SESSION_NONE)
{
	header('location: index.html');
}

error_reporting(0);
if($_POST['num'])
{
	if(isset($_POST['match-true']))
	{
		$answer=1;
	}
	if(isset($_POST['match-false']))
	{
		$answer=0;
	}

	$i=$_POST['num'];

	if($i<$id)
	{
		$id_a=$i;
		$id_b=$id;
		$mine='b';
	}
	else
	{
		$id_a=$id;
		$id_b=$i;
		$mine='a';
	}


	$sql="SELECT * FROM coincidencia WHERE ID_A='$id_a' AND ID_B='$id_b'";
	$result=mysqli_query($con,$sql);
	$row=mysqli_fetch_array($result);
	if ($row!=TRUE) //si no existe
	{
		if($mine=='a')
		{
			$matcha=$answer; 
			$matchb=0;
		}
		else
		{
			$matcha=0;
			$matchb=$answer;
		}
		try {
		  $SQLInsert = "INSERT INTO coincidencia (ID_A, ID_B)
		               VALUES (:id_a, :id_b)";

		  $statement = $conn->prepare($SQLInsert);
		  $statement->execute(array(':id_a' => $id_a, ':id_b' => $id_b));

		}
		catch (PDOException $e) {
		  echo "Error: " . $e->getMessage();
		}
	}
	if($answer==1)
	{
		if($mine=='a')
		{
			$sql="UPDATE coincidencia SET MATCHA='$answer' WHERE ID_A='$id_a' AND ID_B='$id_b'";
			if($answer==1 && $row['MATCHB']==1)
			{
				echo "MATCH!";
			}
		}
		if($mine=='b')
		{
			$sql="UPDATE coincidencia SET MATCHB='$answer' WHERE ID_A='$id_a' AND ID_B='$id_b'";
			if($answer==1 && $row['MATCHA']==1)
			{
				echo "MATCH!";
			}
		}
		$query=mysqli_query($con,$sql);
	}
	
	
	$i=$i+1;
}
else
{
	$i=1;
}


$sql="SELECT * FROM users ORDER BY id ASC";
$analizados=0;

if ($result=mysqli_query($con,$sql))
{
	$numUsers=mysqli_num_rows($result);
		$found=FALSE;
		while($found==FALSE)
		{
			$sql="SELECT * FROM users WHERE id='$i'";
			$result=mysqli_query($con,$sql);
			$row=mysqli_fetch_array($result);
			if ($row==TRUE and $i!=$id)
			{
				$found=TRUE;
				$analizados=$analizados+1;
			}
			else
			{
				$i=$i+1;
			}
			echo "$i";
		}
}


?>

<!DOCTYPE html>
<html>
<head>
	<title>Transacción</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="keyboards" content="habilidad, intercambio, aplicación, crecimiento">
	<meta name="description" content="Un sitio web para intercambiar habilidades con otras personas del área.">
	<meta name="author" content="Emiliano Iacovino, Luisina Lavayen">
	<meta name="robots" content="index">
	<link rel="icon" href="imgs/p3.ico">
	<link rel="stylesheet" type="text/css" href="css/estilo.css">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Courier+Prime:wght@700&display=swap" rel="stylesheet">
	<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
	<script type="text/javascript" src="js/main_win.js"></script>
	<script type="text/javascript" src="https://npmcdn.com/parse/dist/parse.min.js"></script>
	
</head>

<body>

	<header id="main_header">
		<img src="imgs/logo (2).png" id="logo" onclick="window.open('index.html', '_self')">
		<div id="group_of_buttons">
			<button class="bttn_header">
				<img src="imgs/icon1.png" class="icon_header">
			</button>
			<button class="bttn_header" onclick="window.open('actualizar.php', '_self')">
				<img src="imgs/icon2.png" class="icon_header">
			</button>
		</div>
	</header> 

	<section id="home">
		<form action="main_win.php" method="POST" id="perfil" style="display: flex;">
			<div id="perfil_datos">
				<p id="perfil_nombre"><?php echo $row['username'] ?></p>
				<p id="perfil_habilidades"><?php echo $row['habilidades'] ?></p>
			</div>
			<input type="number" name="num" value="<?php echo $i ?>" style="visibility: hidden;">
			<div id="perfil_bttns">
				<input type="submit" name="match-false" class="bttn_perfil" id="btn1">
				<input type="submit" name="match-true" class="bttn_perfil" id="btn2">
				<!-- <button class="bttn_perfil">
					<img src="imgs/quitar.png" class="icon_perfil">
				</button>
				<button class="bttn_perfil">
					<img src="imgs/agregar.png" class="icon_perfil">
				</button> -->
			</div>
		</form>
	</section>


	<!-- <footer>
		©2023 Emiliano Iacovino & Luisina Lavayen. <br> Todos los derechos reservados.
		<a href="https://cafecito.app/e-iacovino">Compranos un café <3</a> 
	</footer> -->
</body>
</html>