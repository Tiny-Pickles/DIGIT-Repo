<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title></title>
    </head>
    <body>
        <h1>Article Display</h1>
        <h1><?php require_once("config.php"); echo htmlspecialchars($_GET["newspaperArticles"])?></h1>
        <ul>
            <?php require_once("config.php");
    $contents = REST_PATH . "/db//ged5131/dill-article-displayPHP.xql";
    $result = file_get_contents($contents);
    echo $result;
?></ul>
<?php include("dill-phpEx2-DIGIT-400-REDO.php");?>
    </body>
</html>