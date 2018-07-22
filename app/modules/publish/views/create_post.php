<?=$this->load->view(branded_view('cp/header'));?>
<form class="form validate" id="form_create_post" enctype="multipart/form-data" method="post" action="<?=$form_action;?>">
<?php
// OC change start 2012-08-24 by Oscar
// Reason: add multiple language
?>
<?=form_hidden('type',$type['id']);?>
<?=form_hidden('link_id',(isset($translation_content["link_id"]))?$translation_content["link_id"]:"");?>
<?php
	if(isset($_GET["is_new"])){
		echo form_hidden('is_new', $_GET["is_new"]);
	}
?>
<?php
// OC change end
?>

<? if (!empty($standard) or (!empty($privileges))) { ?>

<div class="sidebar">
	<h2>发布选项</h2>
	
	<div class="sidebar_content">
	<? if (!empty($standard)) { ?>
		<div class="post_standard">
			<fieldset>
				<ul class="form">
					<?=$standard;?>	
				</ul>
			</fieldset>
		</div>
	<? } ?>
	</div>
	<?php
	if(isset($brother_list)){ ?>
	<h3>语言版本</h3>
	<div class="sidebar_content">
		<div class="post_standard">
			<table>
				<thead>
					<tr>
						<?php
						// OC change start 2012-08-24 by Oscar
						// Reason: add multiple language
						?>
						<th>语言</th>
						<?php
						// OC change end
						?>
						<th>标题</th>
						<th>操作</th>
					</tr>
				</thead>
					<?php foreach($brother_list as $val){?>
						<tr>
							<?php
							// OC change start 2012-08-24 by Oscar
							// Reason: add multiple language
							?>
							<td><?=$val["language_name"]?></td>
							<?php if(isset($val["content_id"]) && $val["content_id"]!=""){ ?>
							<td><?=$val["content_title"]?></td>
							<td>
								<a href="admincp/publish/edit/<?=$val["content_id"]?>">编辑</a>
								<a href="<?=$val["language_code"]?>/<?=$val["link_url_path"]?>" target="_blank">查看</a>
							</td>
							<?php }else{ ?>
							<td>Not translated</td>
							<td><a href="admincp/publish/create_post/<?=$type["id"]?>?translation=<?=$content["id"]?>&language_id=<?=$val["language_id"]?>&is_new=0">add translation</a></td>
							<?php
							// OC change end
							?>
							<?php } ?>
						</tr>	
						
					<?php } ?>
			</table>
		</div>
	</div>
	<?php } ?>
	<? if (!empty($privileges)) { ?>
	<h3>访问权限</h3>
	
	<div class="sidebar_content">
	<div class="post_privileges">
		<fieldset>
			<ul class="form">
				<?=$privileges;?>
			</ul>
		</fieldset>
	</div>
	</div>
<? } ?>
</div>

<? } ?>

<h1><?=$type['singular_name'];?> 发布</h1>

<? if (!empty($standard) or (!empty($privileges))) { ?>
	<div style="float: left; width: 70%;">
<? } ?>

<? if ($invalid === TRUE) { ?>
	<p class="warning"><span>This content did not pass validation (errors below).  However, <b>it is posted live</b>!  Please correct these errors
	as soon as possible: <div style="font-weight: bold"><?=$errors;?></span></div></p>
<? } ?>

	<? if (!empty($standard)) { ?>
		<div class="post_title">
			<?=$title;?>
		</div>
	<? } ?>
	
	<? if (!empty($custom_fields)) { ?>
		<div class="post_custom_fields">
			<?=$custom_fields;?>
		</div>
	<? } ?>
	<div class="submit">
		<input type="submit" class="button" name="form_create_post" value="立即发布" />
	</div>
	</form>
	
<? if (!empty($standard) or (!empty($privileges))) { ?>
	</div>
	<div style="clear:both"></div>
<? } ?>

<?=$this->load->view(branded_view('cp/footer'));?>
