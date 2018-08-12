<?php

require_once "PdoClass.php";

$username = 'root';
$pass = 'admin';
$dbname = 'test';

$db = new PdoClass($username, $pass, $dbname);


if(isset($_POST['input'])){

	$values['name'] = $_POST['name'];
	$values['lastname'] = $_POST['lastname'];
	$values['city'] = $_POST['city'];
	$db->addUser($values['name'], $values['lastname'], $values['city']);
	header('location: '.$_SERVER['HTTP_REFERER']);
}elseif(isset($_POST['query-users'])){

	$response = $db->queryUsers();
	print_r($response->getUsers());
}elseif(isset($_POST['del'])){

	$db->errmod();
	$db->deleteItemInDataBase($_POST['namedel']);
}elseif(isset($_POST['input2'])){

	$db->addArticle($_POST['article'], $_POST['authorid']);
	$db->addCategory($_POST['category']);
	header('location: '.$_SERVER['HTTP_REFERER']);
}elseif(isset($_POST['query-article'])){

	if($_POST['authorid'] != ''){
	$response = $db->queryArticles($_POST['authorid']);
	print_r($response->getArticles());
	}elseif($_POST['category'] != ''){
		$response = $db->queryCategoryArticles($_POST['category']);
		print_r($response->getCategoryArticles());
	}
}elseif(isset($_POST['test'])){
	$db->addCategory($_POST['category']);
}elseif(isset($_POST['addauthor'])){

}elseif(isset($_POST['edit'])){
	echo $_POST['id'];
	include "authoredit.php";
}



