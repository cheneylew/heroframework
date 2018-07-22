<?php

// default values
if (!isset($form)) {
	$form = array(
				'title' => '',
				'url_path' => '',
				'text' => '',
				'email' => '',
				'redirect' => '',
				'button_text' => ''
			);
}

?>
<?=$this->load->view(branded_view('cp/header'));?>

<form class="form validate" id="form_rss" method="post" action="<?=$form_action;?>">
<?=form_hidden('link_id',isset($translation_content["link_id"])?$translation_content["link_id"]:"");?>


<div class="sidebar">
	<h2>Publish Options</h2>
	
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
	<h3>Translation</h3>
	<div class="sidebar_content">
		<div class="post_standard">
			<table>
				<thead>
					<tr>
						<?php
						// OC change start 2012-08-24 by Oscar
						// Reason: add multiple language
						?>
						<th>Language</th>
						<?php
						// OC change end
						?>
						<th>Title</th>
						<th>Operations</th>
					</tr>
				</thead>
					<?php foreach($brother_list as $val){?>
						<tr>
							<?php
							// OC change start 2012-08-24 by Oscar
							// Reason: add multiple language
							?>
							<td><?=$val["language_name"]?></td>
							<?php
							// OC change end
							?>
							<?php if(isset($val["form_id"]) && $val["form_id"]!=""){ ?>
							<td><?=$val["form_title"]?></td>
							<td>
								<a href="admincp/forms/edit/<?=$val["form_id"]?>">Edit</a>
								<a href="<?=$val["language_code"]?>/<?=$val["link_url_path"]?>" target="_blank">View</a>
							</td>
							<?php }else{ ?>
							<td>Not translated</td>
							<td><a href="admincp/forms/add/?translation=<?=$form["id"]?>&language_id=<?=$val["language_id"]?>">add translation</a></td>
							<?php } ?>
						</tr>	
						
					<?php } ?>
			</table>
		</div>
	</div>
	<?php } ?>
</div>

<h1><?=$form_title;?></h1>
<div style="float: left; width: 70%;">
<fieldset>
	<legend>Form Details</legend>
	<ul class="form">
		<li>
			<label class="full" for="title">Form Title</label>
		</li>
		<li>
			<input type="text" class="required full text" id="title" name="title" value="<?=$form['title'];?>" />
		</li>
		<?php if(!isset($translation_content["link_id"])){ ?>
		<li>
			<label for="url_path">URL Path</label>
			<input type="text" class="text mark_empty" id="url_path" rel="e.g, contact-us" name="url_path" style="width:500px" value="<?=$form['url_path'];?>" />
		</li>
		<li>
			<div class="help">If you leave this blank, it will be auto-generated from the Form Title above.</div>
		</li>
		<?php } ?>
		
		<li>
			<label class="full" for="text">Introduction Text</label>
		</li>
		<li>
			<textarea class="full text wysiwyg basic" id="text" name="text"><?=$form['text'];?></textarea>
		</li>
	</ul>
</fieldset>
<?=$privilege_form;?>
<fieldset>
	<legend>Options</legend>
	<ul class="form">
		<li>
			<label for="email">Email Results to</label>
			<input type="text" class="text mark_empty" name="email" id="email" rel="email@example.com" value="<?=$form['email'];?>" />
		</li>
		<li>
			<div class="help">(Optional) Specify an email address to mail all form submissions to.</div>
		</li>
		<li>
			<label for="button_text">Submission Button</label>
			<input type="text" class="text required" name="button_text" id="button_text" value="<?=$form['button_text'];?>" />
		</li>
		<li>
			<div class="help">This text appears on the submit button at the end of the form (e.g., "Submit Form", "Apply Now!").</div>
		</li>
		<li>
			<label for="redirect">Redirect Link</label>
			<?=rtrim(site_url(),'/');?>/<input type="text" class="text required" name="redirect" id="redirect" value="<?=$form['redirect'];?>" />
		</li>
		<li>
			<div class="help">After the user submits this form, they will be redirected to this URL at your web site.</div>
		</li>
	</ul>
</fieldset>

<?=$admin_form;?>

<div class="submit">
	<input type="submit" class="button" name="form_form" value="Save Form" />
</div>
</div>
<div style="clear:both"></div>
</form>
<?=$this->load->view(branded_view('cp/footer'));?>