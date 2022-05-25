<?php
    session_start();
    if(!isset($_SESSION['id'])){
        header("location:login.php");
    }

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard | Web Album</title>
    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="https://cdnjs.cloudlare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
</head>
<body>
        <header>
            <img class="logo" src="donat.jpg" alt="logo" width="120px">
            <nav>
                <ul class="nav__links">
                    <li><a href="album.php">Album</a></li>
                    <li><a href="artis.php">Kategori</a></li>
                    <li><a href="#"></a>Photos</li>
                    <li><a href="#">Post</a></li>
                </ul>
            </nav>
            <a href="logout.php"><button>Logout</button></a>
        </header>
        <h2>
            Selamat Datang di Website Album Photos</h2>
        <img class="svg" src="A2.jpg">
         
</body>
</html>