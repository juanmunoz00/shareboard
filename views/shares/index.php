<div>
	<? if(isset($_SESSION['is_logged_in'])) : ?>
	<a class="btn btn-success btn-share" href="<?echo ROOT_PATH;?>shares/add">Share something</a>
	<? endif; ?>
	<?foreach($viewmodel as $item) :?>
			<div class="well">
				<h3><?echo $item['title']; ?></h3>
				<small><?echo $item['create_date']; ?></small>
				<hr />
				<p><?echo $item['body']; ?></p>
				<br />
				<a class="btn btn-default" href="<? echo $item['link']; ?>" target="_blank">Go to website</a>
			</div>
	<? endforeach; ?>
</div>