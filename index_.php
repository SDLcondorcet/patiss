<!doctype html>
<?php
session_start();
include ('./admin/lib/php/admin_liste_include.php');

//temporairement
//include('admin/lib/php/pgConnect.php');
//include ('admin/lib/php/classes/Connexion.class.php');

//$cnx = Connexion::getInstance($dsn,$user,$password);

?>
<html>
<head>
    <title>TI 2020</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>

<body>
<div id="page">
    <header class="img_header">

    </header>
    <section id="colGauche">
        <nav>
            <?php
            $path = "./lib/php/menu.php";
            if (file_exists($path)) {
                include($path);
            } else {
                print "<br>Page inexistante";
            }
            ?>
        </nav>
        <aside id="label">
            <img src="./images/label.jpg" alt="label qualité"/>
        </aside>
    </section>
    <section id="contenu">
        <div id="main">
            <?php
            if (!isset($_SESSION['page'])) {
                $_SESSION['page'] = "accueil.php";
            }
            if (isset($_GET['page'])) {
                //si on a un param page dans l'url
                $_SESSION['page'] = $_GET['page'];
            }
            $path = "./pages/" . $_SESSION['page'];
            // print "path: " . $path . "<br>";
            if (file_exists($path)) {
                include($path);
            } else {
                include("./pages/page404.php");
            }
            ?>
        </div>

    </section>

</div>
<footer>Le footer</footer>
</body>
</html>