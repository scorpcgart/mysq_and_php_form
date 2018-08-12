<?php

require_once "Response.php";
require_once "ResponseInterface.php";

class PdoClass
{
	private $connect;

	public function __construct($username, $pass, $dbname)
	{
		$host = 'localhost';
		try{

			$this->connect = new PDO("mysql:dbname=$dbname;host=$host", $username, $pass);
			$this->connect->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		}
		catch (PDOException $e)
		{
			echo "NOT connection to database!";
			exit();
		}
	}

	public function action()
	{

			if($this->connect){
				echo "Connection to database!";
			}else{
				echo "Not connection(";
			}
		
	}

	public function addUser($name, $lastname, $city)
	{
		$query= "INSERT INTO Users (name, lastname, city) VALUES (:name, :lastname, :city);";
		$sth = $this->connect->prepare($query);
		$sth->bindParam(':name', $name);
		$sth->bindParam(':lastname', $lastname);
		$sth->bindParam(':city', $city);
		$stm = $sth->execute();
		
		return $stm;

	}

	public function addArticle($article, $authorid)
	{
		try
		{
			$query = "INSERT INTO Articles (article, authorid) VALUES (:article, :authorid);";
			$sth = $this->connect->prepare($query);
			$sth->bindParam(':article', $article);
			$sth->bindParam(':authorid', $authorid);
			$result = $sth->execute();
		}
		catch (PDOException $e)
		{
			echo "Статья не записалась " . $e->getMessage();
			exit();
		}

		return $result;
	}

	public function addCategory($category)
	{
		$q = "SELECT name FROM Category WHERE name = '{$category}';";
		$s = $this->connect->query($q);
		$s->execute();
		$result = $s->fetchAll();
		if(!empty($result)){
			exit();
		}else{
			
			try
		{
			$query = "INSERT INTO Category (name) VALUES (:name);";
			$sth = $this->connect->prepare($query);
			$sth->bindParam(':name', $category);
			$result = $sth->execute();
		}
		catch (PDOException $e)
		{
			echo "Ошибка записи " . $e->getMessage();
			exit();
		}

		return $result;
		}
	}

	public function addCategoryArtilesId($category)
	{
		try
		{
			$q = "SELECT id FROM Category WHERE name = '{$category}';";
			$s = $this->connect->prepare($q);
			$s->bindParam(':name', $category);
			$s->execute();
			$result = $s->fetchAll();

			//$query = "INSERT INTO articlecategory (name) VALUES (:name);";
			//$sth = $this->connect->prepare($query);
			//$sth->bindParam(':name', $category);
			//$result = $sth->execute();
		}
		catch (PDOException $e)
		{
			echo "Ошибка записи " . $e->getMessage();
			exit();
		}

		return $result;
	}

	public function getUsers()
	{
		try
		{
			$query = "SELECT id, name, lastname FROM Users;";
			$sth = $this->connect->query($query);
			$sth->execute();
		}
		catch (PDOException $e)
		{
			echo "Ошибка запроса " . $e->getMessage();
			exit();
		}

		return $sth->fetchAll(PDO::FETCH_ASSOC);
		
	}

	public function queryUsers(): ResponseInterface
	{
		$query = "SELECT id, name, lastname, city FROM Users;";
		$sth = $this->connect->query($query);
		$sth->execute();

		return new Response($sth->fetchAll(PDO::FETCH_ASSOC)); 
	}

	public function queryArticles($authorid): ResponseInterface
	{
		$query = "SELECT u.name, u.lastname, a.article FROM Articles AS a INNER JOIN Users AS u ON u.id = a.authorid WHERE a.authorid = {$authorid};";
		$sth = $this->connect->query($query);
		$sth->execute;

		return new Response($sth->fetchAll(PDO::FETCH_ASSOC));
	}

	public function queryCategoryArticles($category): ResponseInterface
	{
		$query = "SELECT c.name, a.article FROM Category AS c INNER JOIN articlecategory AS ac ON c.id = ac.categoryid INNER JOIN Articles AS a ON ac.articleid = a.id WHERE c.name = '{$category}';";
		$sth = $this->connect->query($query);
		$sth->execute;

		return new Response($sth->fetchAll(PDO::FETCH_ASSOC));
	}

	public function deleteItemInDataBase($name)
	{
		try
		{
			$query = "DELETE FROM Users WHERE name = :name";
			$sth = $this->connect->prepare($query);
			$sth->bindParam(':name', $name, PDO::PARAM_STR);
			$result = $sth->execute();
		}
		catch (PDOException $e)
		{
			echo "Нет такого пользователя: " . $e->getMessage();
			exit();
		}
		
		return $result;
	}

	public function errmod()
	{
		return $this->connect->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	}
	
}

