<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta charset="UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <title>Timeline of News Articles</title>
        <link rel="stylesheet" type="text/css" href="#"/>
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"/>
        <script src="#">/**/</script>
    </head>
    <body>
        <h1>Timeline</h1> 
<ul>       
<?php
    require_once("config.php");
    $issueDate = htmlspecialchars($_GET["issueDate"]);
    $contents = REST_PATH . "/db//ged5131/dill-XQueryPHP-Ex1-EDITS.xql";
    $result = file_get_contents($contents);
    echo $result;
?>
</ul>    
    </body>
</html>