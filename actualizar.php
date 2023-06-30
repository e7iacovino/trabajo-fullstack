<?php 
    require_once 'source/session.php';
    require_once 'source/db_connect.php';

$id = $_SESSION['id'];
$con = mysqli_connect("127.0.0.1", "root", "", "transaccion");

$sql="SELECT * FROM users WHERE id='$id'";
$query=mysqli_query($con, $sql);

$row=mysqli_fetch_array($query);

if($id == '' || !isset($_SESSION) || session_status() === PHP_SESSION_NONE) {
            header('location: index.html');
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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
</head>

<body>
    <header id="main_header">
        <img src="imgs/logo (2).png" id="logo" onclick="window.open('index.html', '_self')">
        <div id="group_of_buttons">
            <button class="bttn_header" onclick="window.open('messages.php', '_self')">
                <img src="imgs/icon1.png" class="icon_header">
            </button>
            <button class="bttn_header" onclick="window.open('actualizar.php', '_self')">
                <img src="imgs/icon2.png" class="icon_header">
            </button>
        </div>
    </header> 

    <section id="home">
        <div class="container mt-5">
            <form action="update.php" method="POST">
                        <label  id="title_form">Mi cuenta</label>
                        <input type="text" class="form-control mb-3" name="user-name" placeholder="Nombre de usuario" value="<?php echo $row['username']  ?>">
                        <input type="text" class="form-control mb-3" name="user-email" placeholder="E-mail" value="<?php echo $row['email']  ?>">
                        <input type="text" class="form-control mb-3" name="user-info" placeholder="Descripción y habilidades" value="<?php echo $row['habilidades']  ?>">
                        <input type="password" class="form-control mb-3" name="user-pass" placeholder="Contraseña" value="">
                    <input type="submit" class="btn-up" value="Actualizar">
                    <input type="submit" class="btn-up" value="Cerrar Sesión" name="close-session">
                    <input type="submit" class="btn-up" value="Eliminar cuenta" name="delete">
                    
            </form>
        </div>      
    </section>

    <!-- <footer>
        ©2023 Emiliano Iacovino & Luisina Lavayen. Todos los derechos reservados. 
    </footer> -->
</body>
</html>