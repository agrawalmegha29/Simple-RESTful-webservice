<?php
	// Set HTTP Response Content Type
	header("Content-Type:application/json");
	
	$url_passed = $_SERVER['REQUEST_URI'];
	$id_url = substr($url_passed, 7);
	
	delivery_response(200,"Ok",$id_url);
	
	function delivery_response($status,$status_message,$id)
	{
		header("HTTP/1.1 $status $status_message");
		
		// Enter username and password
		$username = root;
		$password = root;
		// Create database connection using PHP Data Object (PDO)
		$db = new PDO("mysql:host=localhost;dbname=test", $username, $password);

		// Identify name of table within database
		$table = 'book';

		// Preparing and executing query
		if (!empty($id))
		{	
				$stmt = $db->prepare('SELECT `book`.`Book_id`, `book`.`title`, `book`.`year`, `book`.`price`, `book`.`category`, `authors`.`Author_Name` FROM `book`, `authors`, `book_authors` WHERE `authors`.`Author_id` = `book_authors`.`Author_id` and `book_authors`.`Book_id` = `book`.`Book_id` and `book`.`Book_id` ='.$id);
		}
		else
		{
				$stmt = $db->prepare('SELECT title FROM book');
		}
		$stmt->execute();
		
		//Getting results in a variable
		$results=$stmt->fetchAll(PDO::FETCH_ASSOC);
		
		//Encoding the results in JSON object
		$json_response=json_encode($results);

		// Close connection to database
		$db = NULL;
		
		//Echo the JSON as output of WebService
		if (!empty($results))
		{
				echo $json_response;
		}
		else 
		{
				echo 'Sorry, the book details were not found in the database';
		}
	}
?>
