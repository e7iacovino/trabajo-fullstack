
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
	<link href="css/estilo.css?v=<?php echo time(); ?>" rel="stylesheet" type="text/css" />
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Courier+Prime:wght@700&display=swap" rel="stylesheet">
	<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
	<script type="text/javascript" src="js/index.js"></script>
	<script type="text/javascript" src="https://npmcdn.com/parse/dist/parse.min.js"></script>

</head>

<body>
	<header id="main_header">
		<img src="imgs/logo (2).png" id="logo" onclick="window.open('index.html', '_self')">
		<div id="group_of_buttons">
			<button class="bttn_header" style="visibility: hidden;">
				<img src="imgs/icon1.png" class="icon_header">
			</button>
			<button class="bttn_header" onclick="window.open('actualizar.php', '_self')">
				<img src="imgs/icon2.png" class="icon_header">
			</button>
		</div>
	</header> 

	<section id="home">
		<div id="matches">
			<?php
			    require_once 'source/session.php';
			    require_once 'source/db_connect.php';
			error_reporting(0);
			$id = $_SESSION['id'];
			$con = mysqli_connect("127.0.0.1", "root", "", "transaccion");
			$sql="SELECT * FROM coincidencia WHERE (ID_A='$id' OR ID_B='$id') AND (MATCHA=1 AND MATCHB=1) ORDER BY ID_COINCIDENCIA ASC";
			$analizados=0;
			$i=0; 
			if ($result=mysqli_query($con,$sql))
			{
				$numUsers=mysqli_num_rows($result);
				while ($analizados<$numUsers)
				{
					$found=FALSE;
					while($found==FALSE)
					{
						$sql="SELECT * FROM coincidencia WHERE ID_COINCIDENCIA='$i'";
						$result=mysqli_query($con,$sql);
						$row=mysqli_fetch_array($result);
						if ($row==TRUE and $row['MATCHA']==1 and $row['MATCHB']==1 and ($row[1]==$id or $row[2]==$id))
						{
							$found=TRUE;
							$analizados=$analizados+1;
							if($row['ID_A']==$id)
							{
								$otro= $row[2];
							}
							else
							{
								$otro= $row[1];
							}
							$sql="SELECT * FROM users WHERE id='$otro'";
							$result=mysqli_query($con,$sql);
							$row=mysqli_fetch_array($result);
							echo
							"
								<div class='match' style='background-color: #ffffff4f;display: flex;align-items: center;justify-content: flex-start;padding: 2%;margin-bottom: 2%;font-family: Poppins, arial;-moz-border-radius: 7px;-webkit-border-radius: 7px;  animation: appear 1s;'>
									<img src='imgs/pf.png' style='width: 6vh; margin-right: 2%;filter: invert(100%);'>
									<b>Coincidencia con: $row[1] <br>
									Información: $row[5] <br>
									Correo electrónico: $row[3]</b>
								</div>
							";
							$i=$i+1;
						}
						else
						{
							$i=$i+1;
						}
						
					}
				}
					
			}
			?>
		</div>
		
	</section>

	<!-- <footer>
		©2023 Emiliano Iacovino & Luisina Lavayen. Todos los derechos reservados. 
	</footer> -->
</body>
</html>