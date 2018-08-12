<!DOCTYPE html>
<html>
<head>
	<title>edit author</title>
</head>
<body>
<h1>Редактировать автора</h1>
<form action="action.php">
	<?php var_dump($_POST['name']);?>
	имя <input type="text" name="name"><br><br>
	фамилия<input type="text" name="lastname"><br><br>
	город<input type="text" name="city"><br><br>
	<input type="submit" value="ok"><br>
</form>
</body>
</html>