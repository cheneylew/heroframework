<?=$this->head_assets->javascript('js/form.send_email.js');?>

<?=$this->load->view(branded_view('cp/header'));?>
<div class="sidebar">
	<h2>选择收件人</h2>
	<div class="sidebar_content">
		在下面指定此电子邮件的收件人。
	</div>
	<h3>用户组</h3>
	<div class="sidebar_content">
		<ul class="recipients groups">
			<? foreach ($usergroups as $group) { ?>
			<li>
				<input type="checkbox" name="recipient" class="group" rel="<?=$group['name'];?>" value="<?=$group['id'];?>" /> <?=$group['name'];?>
			</li>
			<? } ?>
		</ul>
	</div>	
	<h3>用户</h3>
	<div class="sidebar_content">
		<form method="post" action="">
			<input type="text" id="member_search" class="mark_empty" autocomplete="off" rel="Search by ID, Username, Name, or Email" name="member_search" style="width:98%" />
		</form>
		<ul class="recipients members">
		
		</ul>
	</div>
</div>

<h1>发邮件</h1>


<div style="float: left; width: 70%;">
		<form class="form validate" method="post" action="<?=site_url('admincp/emails/post_send');?>">
		<ul class="form">
			<li>
				<label for="recipients" class="full">收件人</label>
			</li>
			<li>
				<ul class="final_recipients">
					<li>添加收件人电子邮件: <input type="text" placeholder="email@example.com" name="email_address" value="" /> <input type="submit" id="add_email" name="" value="Add" /></li>
					
					<? if (!empty($passed_users)) { ?>
						<li class="empty" style="display:none">没有收件人。在左侧的对话框中选择收件人（或在下面输入电子邮件）。</li>
						<? foreach ($passed_users as $user) { ?>
							<li>Member: <?=$user['name'];?> (<?=$user['email'];?>) (<a rel="<?=$user['name'];?> (<?=$user['email'];?>)" href="#" class="remove member">remove</a>) <input type="hidden" name="recipient_members[]" value="<?=$user['id'];?>" /></li>
						<? } ?>
					<? } else { ?>
						<li class="empty">没有收件人。在左侧的对话框中选择收件人（或在下面输入电子邮件）。</li>
					<? } ?>
				</ul>
			</li>
		
			<? if (!empty($templates)) { ?>
			
			<li>
				<label class="full" for="templates">Use Template</label>
			</li>
			<li>
				<select name="templates">
					<option value=""></option>
					<? foreach ($templates as $template) { ?>
						<option value="<?=$template['id'];?>"><?=$template['name'];?></option>
					<? } ?>
				</select>
			</li>
				
			<? } ?>
			
			<li>
				<label for="subject" class="full">主题</label>
			</li>
			<li>
				<input type="text" class="text full required" id="subject" name="subject" value="" />
			</li>
			<li>
				<label for="body" class="full">内容</label>
			</li>
			<li>
				<textarea name="body" id="body" class="full required wysiwyg basic"></textarea>
			</li>
			<li>
				<div class="help" style="margin: 0; padding: 0;">您可以在电子邮件正文和主题中使用标签 <b>[MEMBER_FIRST_NAME]</b>, <b>[MEMBER_LAST_NAME]</b>, and <b>[MEMBER_EMAIL]</b> 。它们将被每个成员的适当值替换。</div>
			</li>
			<li style="display: none">
				<input type="checkbox" name="html" value="1" checked="checked" /> <b>This email is formatted with HTML tags</b>
			</li>
			<li>
				<input type="checkbox" name="new_template" value="1" /> <b>将此电子邮件另存为模板</b> <input type="text" class="text" placeholder="Enter Template Name" name="new_template_name" value="" />
			</li>
		</ul>
		<div class="submit">
			<input type="submit" class="submit button" name="" value="发邮件" />
		</div>
		<div class="warning"><span>对于具有成员组收件人的电子邮件，邮件递送将交错，以便每5分钟发送<?=setting('mail_queue_limit');?>封电子邮件。此设置可在配置>设置中自定义。</span></div>
	</form>
</div>
<div style="clear:both"></div>

<?=$this->load->view(branded_view('cp/footer'));?>
