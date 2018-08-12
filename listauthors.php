<?php 
require_once "PdoClass.php";

$db = new PdoClass('root', 'admin', 'test');

$users = $db->getUsers();

foreach ($users as $key => $value) {
	echo "<li>".$users[$key]['name'] . " ";
	echo $users[$key]['lastname'] . " " . "<input type='submit' value ='редактировать' name='edit'> <input type='hidden' name='id' value="<?php echo $users[$key]['id'];?>">" . "</li>";

}