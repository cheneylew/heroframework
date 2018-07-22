<?=$this->load->view(branded_view('cp/header'));?>
<h1>导入成员</h1>

<p>通过上传成员信息的CSV文件将成员导入您网站的成员数据库。</p>

<p><b>每个导入的记录必须至少具有电子邮件地址，名字和姓氏。密码可以自动生成或导入。</b>.</p>

<p>要开始，请选择要上传的会员信息的CSV文件。</p>

<form class="form validate" enctype="multipart/form-data" id="form_user" method="post" action="<?=$form_action;?>">

<?= $form ?>

<div class="submit">
	<input type="submit" class="button" name="submit" value="Upload CSV File" />
</div>
</form>


<?=$this->load->view(branded_view('cp/footer'));?>
