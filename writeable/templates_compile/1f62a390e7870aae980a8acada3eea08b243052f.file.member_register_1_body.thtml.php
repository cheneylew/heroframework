<?php /* Smarty version Smarty-3.0.6, created on 2017-03-13 14:37:21
         compiled from "/Applications/MAMP/htdocs/hero/writeable/email_templates/member_register_1_body.thtml" */ ?>
<?php /*%%SmartyHeaderCode:204376642358c63e2174b1f4-35530330%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '1f62a390e7870aae980a8acada3eea08b243052f' => 
    array (
      0 => '/Applications/MAMP/htdocs/hero/writeable/email_templates/member_register_1_body.thtml',
      1 => 1345450046,
      2 => 'file',
    ),
    '34d16dc9e1b2b36536b82795c34cb6dd5513bcfb' => 
    array (
      0 => '/Applications/MAMP/htdocs/hero/writeable/email_templates/email_layout.thtml',
      1 => 1345450046,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '204376642358c63e2174b1f4-35530330',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<?php if (!is_callable('smarty_function_url')) include '/Applications/MAMP/htdocs/hero/themes/_plugins/function.url.php';
if (!is_callable('smarty_function_setting')) include '/Applications/MAMP/htdocs/hero/themes/_plugins/function.setting.php';
?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<style>
h1 { background-color: #e6f2f8; color: #0b5679; font-size: 18pt; font-weight: normal; font-family: helvetica, arial, sans-serif; margin: 0 0 10px 0; padding: 7px 10px }
div.body { padding: 10px; font-size: 10pt; font-family: helvetica, arial, sans-serif; color: #111; }
</style>
</head>
<body>
<div class="body">
	
<p>Hi <?php echo $_smarty_tpl->getVariable('member')->value['first_name'];?>
,</p>

<p>Thank you for registering an account at <?php echo $_smarty_tpl->getVariable('site_name')->value;?>
.  Your account details are below:</p>

<p><b>Username</b>: <?php echo $_smarty_tpl->getVariable('member')->value['username'];?>
</p>
<p><b>Password</b>: <?php echo $_smarty_tpl->getVariable('password')->value;?>
</p>

<a href="<?php echo smarty_function_url(array(),$_smarty_tpl);?>
">Click here to login now</a>.


	
	<?php echo smarty_function_setting(array('name'=>"email_signature"),$_smarty_tpl);?>

</div>
</body>
</html>