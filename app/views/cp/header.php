<?=$this->load->view(branded_view('cp/html_header'));?>
<body>
	<div id="notices"><?=get_notices();?></div>
	<div id="header">
		<div id="app_bar">
			<span class="app_name"><a href="<?=site_url();?>" class="tooltip" title="Open the homepage of your website."><?=setting('site_name');?></a></span> | 控制台
			<div id="logged_in">
				当前登录用户: <span class="username"><?=$this->user_model->get('username');?></span> (<a href="<?=site_url('admincp/logout');?>">退出</a>)
			</div>
			<a id="get_support" href="<?=setting('app_support');?>">技术支持</a>
		</div>
		<div id="navigation">
			<ul>
				<?=$this->admin_navigation->display();?>
			</ul>
			<div style="clear: both"></div>
		</div>
		<div style="clear: both"></div>
	</div>
	<div id="wrapper">
		<div id="content">
			<div id="box-top-right"></div>
			<div id="box-bottom-left"></div>
			<div id="box-bottom-right"></div>
			<div id="box-content">
			<?=$this->admin_navigation->get_module_links();?>