<?=$this->load->view(branded_view('cp/header'));?>
<h1>自定义字段</h1>

<ul class="inner_nav">	
	<li><a href="<?=site_url('admincp/users/data');?>">会员数据</a></li>
	<? if (module_installed('store')) { ?>
		<li><a href="<?=site_url('admincp/store/data');?>">产品数据</a></li>
		<li><a href="<?=site_url('admincp/store/collection_data');?>">Store Collection Data</a></li>
	<? } ?>
</ul>

<h3>什么是自定义字段？</h3>
<p>自定义字段扩展<?=setting('app_name');?>中的现有数据集。例如，如果您想在成员注册时收集其他信息（例如，关于他们的职业），您可以添加自定义字段，“当前雇主”和“职位”。</p>

<p>自定义字段包括所有标准Web表单输入类型：</p>
<ul>
	<li>Text fields</li>
	<li>Textarea fields</li>
	<li>WYSIWYG editor textarea fields</li>
	<li>Select/dropdown menus</li>
	<li>Radio buttons</li>
	<li>Checkboxes</li>
	<li>File upload boxes</li>
</ul>

<h3>集成自定义字段</h3>

<p>大多数自定义字段将需要有初级HTML经验的人才能将这些自定义数据用于前端网页设计（即模板）。有关自定义网站设计和在模板中使用自定义字段的信息，请访问<a href="<?=site_url('app_support');?>">支持网站</a>。</p>
<?=$this->load->view(branded_view('cp/footer'));?>
