<?php /* Smarty version Smarty-3.0.6, created on 2017-03-13 13:57:59
         compiled from "/Applications/MAMP/htdocs/hero/themes/electric/events.thtml" */ ?>
<?php /*%%SmartyHeaderCode:205788839658c634e7739b75-76212944%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'dab663a248ba198316dbb24effb4387d8b72702d' => 
    array (
      0 => '/Applications/MAMP/htdocs/hero/themes/electric/events.thtml',
      1 => 1336890316,
      2 => 'file',
    ),
    'd9741333e03de979d83c42e0e526e900d882dd08' => 
    array (
      0 => '/Applications/MAMP/htdocs/hero/themes/electric/layout.thtml',
      1 => 1345503940,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '205788839658c634e7739b75-76212944',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<?php if (!is_callable('smarty_function_url')) include '/Applications/MAMP/htdocs/hero/themes/_plugins/function.url.php';
if (!is_callable('smarty_function_setting')) include '/Applications/MAMP/htdocs/hero/themes/_plugins/function.setting.php';
if (!is_callable('smarty_function_theme_url')) include '/Applications/MAMP/htdocs/hero/themes/_plugins/function.theme_url.php';
if (!is_callable('smarty_function_menu')) include 'app/modules/menu_manager/template_plugins/function.menu.php';
if (!is_callable('smarty_block_login_form')) include 'app/modules/users/template_plugins/block.login_form.php';
if (!is_callable('smarty_block_content')) include 'app/modules/publish/template_plugins/block.content.php';
if (!is_callable('smarty_modifier_date_format')) include '/Applications/MAMP/htdocs/hero/app/libraries/smarty/plugins/modifier.date_format.php';
if (!is_callable('smarty_function_xss_clean')) include '/Applications/MAMP/htdocs/hero/themes/_plugins/function.xss_clean.php';
if (!is_callable('smarty_function_shorten')) include '/Applications/MAMP/htdocs/hero/themes/_plugins/function.shorten.php';
?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
<meta content="text/html; charset=UTF-8" http-equiv="Content-Type" />
<base href="<?php echo smarty_function_url(array(),$_smarty_tpl);?>
" />
<title>Calendar - <?php echo smarty_function_setting(array('name'=>"site_name"),$_smarty_tpl);?>
</title>
<link href='http://fonts.googleapis.com/css?family=Podkova' rel='stylesheet' type='text/css'>
<link href="<?php echo smarty_function_theme_url(array('path'=>"css/universal.css"),$_smarty_tpl);?>
" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="<?php echo smarty_function_url(array('path'=>"themes/_common/jquery-1.4.2.min.js"),$_smarty_tpl);?>
"></script>
<script type="text/javascript" src="<?php echo smarty_function_theme_url(array('path'=>"js/universal.js"),$_smarty_tpl);?>
"></script>
<script type="text/javascript" src="<?php echo smarty_function_theme_url(array('path'=>"js/form.js"),$_smarty_tpl);?>
"></script>


</head>
<body>
<div id="notices"></div>

<div id="wrapper">
	<div class="container">
		<div id="header">
			<a class="logo" href="<?php echo smarty_function_url(array(),$_smarty_tpl);?>
">
				<div class="logo_text">
					<?php echo smarty_function_setting(array('name'=>"site_name"),$_smarty_tpl);?>

				</div>
			</a>
			<ul>
				<?php  $_smarty_tpl->tpl_vars['item'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('language_list')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['item']->key => $_smarty_tpl->tpl_vars['item']->value){
?>
				<li><a href="
<?php echo $_smarty_tpl->tpl_vars['item']->value['language_code'];?>
/<?php echo $_smarty_tpl->getVariable('page_url')->value;?>
"><?php echo $_smarty_tpl->tpl_vars['item']->value['language_name'];?>
</a></li>
				<?php }} ?>
			</ul>
			
		</div>
		
		<div id="navigation">
			<?php echo smarty_function_menu(array('name'=>"main_menu",'show_sub_menus'=>"yes"),$_smarty_tpl);?>

			<div style="clear:both"></div>
		</div>
	</div>
		
	<div class="container content">
		
			<div class="sidebar">
				
				
				
			
				
			
				<div class="sidebar_block">
					<div class="sidebar_head"></div>
					<div class="sidebar_body">
						<form method="get" action="<?php echo smarty_function_url(array('path'=>"search"),$_smarty_tpl);?>
" class="validate search">
							<label style="display: none" for="side_search">Search Query</label>
							<input type="text" class="text required" placeholder="search query" name="q" id="side_search" /> <input type="submit" class="button small" name="" value="Search" />
						</form>
					</div>
					<div class="sidebar_foot"></div>
				</div>
				
				<div class="sidebar_block">
					<div class="sidebar_head"></div>
					<div class="sidebar_body">
						<?php if (!$_smarty_tpl->getVariable('logged_in')->value){?>
							<h3>Member Login</h3>
							<div class="side_login">
								<?php $_smarty_tpl->smarty->_tag_stack[] = array('login_form', array('var'=>"form",'return'=>$_smarty_tpl->getVariable('current_url')->value)); $_block_repeat=true; smarty_block_login_form(array('var'=>"form",'return'=>$_smarty_tpl->getVariable('current_url')->value), null, $_smarty_tpl, $_block_repeat);while ($_block_repeat) { ob_start();?>

									<form method="post" action="<?php echo $_smarty_tpl->getVariable('form')->value['form_action'];?>
">
										<input type="hidden" name="return" value="<?php echo $_smarty_tpl->getVariable('form')->value['return'];?>
">
										
										<input class="text" type="text" placeholder="email" name="username" value="" /><br />
										<input class="text" type="password" placeholder="password" name="password" value="" /><br />
										<input type="submit" class="button small" name="" value="Login Now" />
									</form>
									<p><a href="<?php echo smarty_function_url(array('path'=>"users/register"),$_smarty_tpl);?>
">Create an account</a></p>
									<p><a href="<?php echo smarty_function_url(array('path'=>"users/forgot_password"),$_smarty_tpl);?>
">I forgot my password</a></p>
								<?php $_block_content = ob_get_clean(); $_block_repeat=false; echo smarty_block_login_form(array('var'=>"form",'return'=>$_smarty_tpl->getVariable('current_url')->value), $_block_content, $_smarty_tpl, $_block_repeat);  } array_pop($_smarty_tpl->smarty->_tag_stack);?>

							</div>
						<?php }else{ ?>
							<h3>My Account</h3>
							<p>Welcome, <?php echo $_smarty_tpl->getVariable('member')->value['first_name'];?>
!</p>
							<p class="account_links"><img src="<?php echo smarty_function_theme_url(array('path'=>"images/manage_account.png"),$_smarty_tpl);?>
" alt="manage account" /> <a class="side_manage" href="<?php echo smarty_function_url(array('path'=>"users"),$_smarty_tpl);?>
">Manage my account</a>&nbsp;&nbsp; <img src="<?php echo smarty_function_theme_url(array('path'=>"images/logout.png"),$_smarty_tpl);?>
" alt="logout" /> <a class="side_logout" href="<?php echo smarty_function_url(array('path'=>"users/logout"),$_smarty_tpl);?>
">Logout</a></p>
						<?php }?>
					</div>
					<div class="sidebar_foot"></div>
				</div>
				
				<?php if ($_smarty_tpl->getVariable('uri_segment')->value[1]!="events"){?>
					<div class="sidebar_block">
						<div class="sidebar_head"></div>
						<div class="sidebar_body">
							<h3>Upcoming Events</h3>
							<ul class="upcoming_events">
							<?php $_smarty_tpl->smarty->_tag_stack[] = array('content', array('var'=>"event",'type'=>"events",'limit'=>"4",'sort'=>"events.event_date",'sort_dir'=>"asc",'language_id'=>($_smarty_tpl->getVariable('current_language_id')->value))); $_block_repeat=true; smarty_block_content(array('var'=>"event",'type'=>"events",'limit'=>"4",'sort'=>"events.event_date",'sort_dir'=>"asc",'language_id'=>($_smarty_tpl->getVariable('current_language_id')->value)), null, $_smarty_tpl, $_block_repeat);while ($_block_repeat) { ob_start();?>

								<li>
									<a class="name" href="<?php echo $_smarty_tpl->getVariable('event')->value['url'];?>
"><?php echo $_smarty_tpl->getVariable('event')->value['title'];?>
</a>
									<span class="date_place"><?php echo smarty_modifier_date_format($_smarty_tpl->getVariable('event')->value['event_date'],"%e.%b.%Y");?>
 @ <?php echo $_smarty_tpl->getVariable('event')->value['location'];?>
</span>
								</li>
							<?php $_block_content = ob_get_clean(); $_block_repeat=false; echo smarty_block_content(array('var'=>"event",'type'=>"events",'limit'=>"4",'sort'=>"events.event_date",'sort_dir'=>"asc",'language_id'=>($_smarty_tpl->getVariable('current_language_id')->value)), $_block_content, $_smarty_tpl, $_block_repeat);  } array_pop($_smarty_tpl->smarty->_tag_stack);?>

							</ul>
						</div>
						<div class="sidebar_foot"></div>
					</div>
				<?php }?>
				
				<div class="sidebar_block">
					<div class="sidebar_head"></div>
					<div class="sidebar_body">
						<h3>Latest Blog Posts</h3>
						<ul class="latest_blog_posts">
						<?php $_smarty_tpl->smarty->_tag_stack[] = array('content', array('var'=>"post",'type'=>"blog",'limit'=>"5",'sort'=>"content.content_date",'sort_dir'=>"desc",'language_id'=>($_smarty_tpl->getVariable('current_language_id')->value))); $_block_repeat=true; smarty_block_content(array('var'=>"post",'type'=>"blog",'limit'=>"5",'sort'=>"content.content_date",'sort_dir'=>"desc",'language_id'=>($_smarty_tpl->getVariable('current_language_id')->value)), null, $_smarty_tpl, $_block_repeat);while ($_block_repeat) { ob_start();?>

							<li>
								<a class="title" href="<?php echo $_smarty_tpl->getVariable('post')->value['url'];?>
"><?php echo $_smarty_tpl->getVariable('post')->value['title'];?>
</a>
								<span class="date"><?php echo smarty_modifier_date_format($_smarty_tpl->getVariable('post')->value['date'],"%e.%b.%Y");?>
</span>
							</li>
						<?php $_block_content = ob_get_clean(); $_block_repeat=false; echo smarty_block_content(array('var'=>"post",'type'=>"blog",'limit'=>"5",'sort'=>"content.content_date",'sort_dir'=>"desc",'language_id'=>($_smarty_tpl->getVariable('current_language_id')->value)), $_block_content, $_smarty_tpl, $_block_repeat);  } array_pop($_smarty_tpl->smarty->_tag_stack);?>

						</ul>
					</div>
					<div class="sidebar_foot"></div>
				</div>
			</div>
		
		
		<div class="inner_content">
			
	<?php if ($_GET['month']){?>
		<?php $_smarty_tpl->tpl_vars["month"] = new Smarty_variable($_GET['month'], null, null);?>
	<?php }else{ ?>
		<?php $_smarty_tpl->tpl_vars["month"] = new Smarty_variable(smarty_modifier_date_format(time(),"%B"), null, null);?>
	<?php }?>
	
	<?php $_smarty_tpl->tpl_vars["year"] = new Smarty_variable(smarty_modifier_date_format(time(),"%Y"), null, null);?>

	<h1>Events Calendar for <?php echo smarty_function_xss_clean(array('string'=>$_smarty_tpl->getVariable('month')->value),$_smarty_tpl);?>
 <?php echo smarty_modifier_date_format(time(),"%Y");?>
</h1>
	
	<ul class="calendar_nav">
		<li><a href="<?php echo smarty_function_url(array('path'=>"events?month=January"),$_smarty_tpl);?>
">Jan</a></li>
		<li><a href="<?php echo smarty_function_url(array('path'=>"events?month=February"),$_smarty_tpl);?>
">Feb</a></li>
		<li><a href="<?php echo smarty_function_url(array('path'=>"events?month=March"),$_smarty_tpl);?>
">Mar</a></li>
		<li><a href="<?php echo smarty_function_url(array('path'=>"events?month=April"),$_smarty_tpl);?>
">Apr</a></li>
		<li><a href="<?php echo smarty_function_url(array('path'=>"events?month=May"),$_smarty_tpl);?>
">May</a></li>
		<li><a href="<?php echo smarty_function_url(array('path'=>"events?month=June"),$_smarty_tpl);?>
">Jun</a></li>
		<li><a href="<?php echo smarty_function_url(array('path'=>"events?month=July"),$_smarty_tpl);?>
">Jul</a></li>
		<li><a href="<?php echo smarty_function_url(array('path'=>"events?month=August"),$_smarty_tpl);?>
">Aug</a></li>
		<li><a href="<?php echo smarty_function_url(array('path'=>"events?month=September"),$_smarty_tpl);?>
">Sep</a></li>
		<li><a href="<?php echo smarty_function_url(array('path'=>"events?month=October"),$_smarty_tpl);?>
">Oct</a></li>
		<li><a href="<?php echo smarty_function_url(array('path'=>"events?month=November"),$_smarty_tpl);?>
">Nov</a></li>
		<li><a href="<?php echo smarty_function_url(array('path'=>"events?month=December"),$_smarty_tpl);?>
">Dec</a></li>
	</ul>
	
	<div style="clear:left"></div>
	
	<p style="font-style: italic">To have your event listed online, please <a href="<?php echo smarty_function_url(array('path'=>"contact"),$_smarty_tpl);?>
">contact us</a>.</p>
	
	<ul class="calendar">
		<?php $_smarty_tpl->smarty->_tag_stack[] = array('content', array('var'=>"event",'type'=>"events",'limit'=>"50",'calendar_month'=>$_smarty_tpl->getVariable('month')->value,'calendar_year'=>$_smarty_tpl->getVariable('year')->value,'sort'=>"events.event_date",'sort_dir'=>"asc")); $_block_repeat=true; smarty_block_content(array('var'=>"event",'type'=>"events",'limit'=>"50",'calendar_month'=>$_smarty_tpl->getVariable('month')->value,'calendar_year'=>$_smarty_tpl->getVariable('year')->value,'sort'=>"events.event_date",'sort_dir'=>"asc"), null, $_smarty_tpl, $_block_repeat);while ($_block_repeat) { ob_start();?>

			<?php $_smarty_tpl->tpl_vars["found_content"] = new Smarty_variable("true", null, null);?>
			<li>
				<div class="date">
					<span class="day"><?php echo smarty_modifier_date_format($_smarty_tpl->getVariable('event')->value['event_date'],"%e");?>
</span>
					<span class="month"><?php echo smarty_modifier_date_format($_smarty_tpl->getVariable('event')->value['event_date'],"%B");?>
</span>
				</div>
				<a class="title" href="<?php echo $_smarty_tpl->getVariable('event')->value['url'];?>
"><?php echo $_smarty_tpl->getVariable('event')->value['title'];?>
</a>
				<div class="detail">@ <?php echo $_smarty_tpl->getVariable('event')->value['location'];?>
</div>
				<div class="detail description"><?php echo smarty_function_shorten(array('string'=>$_smarty_tpl->getVariable('event')->value['description'],'length'=>"90"),$_smarty_tpl);?>
</div>
			</li>
		<?php $_block_content = ob_get_clean(); $_block_repeat=false; echo smarty_block_content(array('var'=>"event",'type'=>"events",'limit'=>"50",'calendar_month'=>$_smarty_tpl->getVariable('month')->value,'calendar_year'=>$_smarty_tpl->getVariable('year')->value,'sort'=>"events.event_date",'sort_dir'=>"asc"), $_block_content, $_smarty_tpl, $_block_repeat);  } array_pop($_smarty_tpl->smarty->_tag_stack);?>

	</ul>
	
	<?php if (!$_smarty_tpl->getVariable('found_content')->value){?>
		<p>Sorry, no calendar events exist for this month.</p>
	<?php }?>

		</div>
		
		<div style="clear:both"></div>
	</div>
	
	<div class="container footer">
		Copyright &copy; <?php echo smarty_modifier_date_format(time(),"%Y");?>
, <?php echo smarty_function_setting(array('name'=>"site_name"),$_smarty_tpl);?>
.  All Rights Reserved.  &nbsp;&nbsp;&nbsp;<?php echo smarty_function_menu(array('name'=>"footer_menu",'show_sub_menus'=>"off",'class'=>"footer_menu"),$_smarty_tpl);?>

	</div>
</div>
</body>
</html>