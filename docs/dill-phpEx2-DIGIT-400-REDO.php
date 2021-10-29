<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title></title>
    </head>
    <body>
        <h1>Article Timeline</h1>
        <ul>
            <?php require_once("config.php");
    $contents = REST_PATH . "/db//ged5131/dill-XQueryPHP-REDO.xql";
    $result = file_get_contents($contents);
    echo $result;
?></ul>
    </body>
</html>
