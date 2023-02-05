<?php

$launchId = $_GET['cpu'];


$connect = mysqli_connect("root.silent.hosted.nfoservers.com", "silentwebhost", "", "xbLive");

if($connect) {

	if (isset($launchId)) {

		$sql = "SELECT * FROM `users` WHERE `cpu`='" . $launchId . "' LIMIT 1";
		$result = $connect->query($sql);
				
		if ($result->num_rows > 0) 
		{
			while($row = $result->fetch_assoc()) {
				
				$titleId = $row["qtitleid"];
				echo $titleId;
				$connect->query("UPDATE `users` SET `qtitleid`='12345678' WHERE `cpu`='" . $launchId . "' LIMIT 1"); //update Launch ID
			}
		}
		else
		{
			echo "Failed";
		}

	}

}else{

	echo "Failed";
}
?>