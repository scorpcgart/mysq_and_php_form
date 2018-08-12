<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
<h1>Управление авторами</h1>

<form action="action.php" method="post">
	<input type="submit" value="Добавить автора" name="addauthor">
</form>
<hr>
<h2>Список авторов</h2>
<form action="action.php" method="post">
<ol><?php include "listauthors.php"; ?></ol>
</form>
</body>
</html>