<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<table border="1">
		<thead>
			<th>Имя</th>
			<th>Фамилия</th>
			<th>Город</th>
		</thead>
		<tbody>
		<?php 
			foreach ($array as $key => $value) {
				if(array_key_exists('name', $array)){
					 $array['name'];
				}else{
					echo "netu";
				}
			}
		?>
			<tr>
				<td></td>
				<td></td>
				<td></td>
			</tr>
		</tbody>
	</table>
</body>
</html>
