<!DOCTYPE html>
<html>
<head>
	<title>form</title>
</head>
<body>
<form action="action.php" method="post">
<h2>Введите</h2>
	<input type="hidden" name="input">
	name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="name"><br><br>
	last name<input type="text" name="lastname"><br><br>
	city&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="city"><br><br>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="enter"><br><br>
</form>

<form action="action.php" method="post">
	<input type="hidden" name="query-users">
	<input type="submit" value="Запрос из базы">
</form>

<form action = "action.php" method="post">
	<input type="hidden" name = "del">
	<input type="text" name = "namedel">
	<input type="submit" value = "Удаление пользователя из базы">
</form>
<hr>
<hr>
<form action="action.php" method="post">
	<input type="hidden" name="input2"><br><br>
	authorid<input type="text" name="authorid"><br><br>
	category<input type="text" name="category"><br><br>
	<textarea cols="70" rows="10" name="article"></textarea>
	<input type="submit" value="Ввод">
</form>
<hr>
<form action="action.php" method="post">
	<input type="hidden" name="query-article">
	категория статьи<input type="text" name="category"><br><br>
	id автора статьи<input type="text" name="authorid"><br><br>
	<input type="submit" value="Запросить">
</form>
<br>
<hr>
<br>
<form action="action.php" method="post"> 
	<input type="hidden" name="test">
	<input type="text" name="category">
	<input type="submit" value="проверить">
</form>

</body>
</html>