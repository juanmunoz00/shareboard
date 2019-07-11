<?
class ShareModel extends Model{
	public function Index(){
		$this->query('SELECT * FROM shares ORDER BY create_date DESC');
		$rows = $this->resultSet();
		//echo 'query</br>';
		//print_r($rows);
		return $rows;
	}

	public function add(){
		//Sanitize POST
		$post = filter_input_array(INPUT_POST, FILTER_SANITIZE_STRING);

		if($post['submit']){
			if(($post['title'] == '') || ($post['body'] == '') || ($post['link'] == '')){
				Messages::setMsg('Please fill in all the fields', 'error');
				return;
			}else{			

				//Inert into mysql
				$this->query('INSERT INTO shares (title, body, link, user_id) VALUES(:title, :body, :link, :user_id)');

				$this->bind(':title', $post['title']);
				$this->bind(':body', $post['body']);
				$this->bind(':link', $post['link']);
				$this->bind(':user_id', 1);

				$this->execute();

				//Verify
				if($this->lastInsertId()){
					$message="Post added succesfully!";
					//Redirect
					header('location: '.ROOT_URL.'shares');
				}
			}
		}
		
		return;
	}
}
?>