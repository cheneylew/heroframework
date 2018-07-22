<?php
$this->load->view(branded_view('cp/header'));

$setting_types = unserialize(setting('search_content_types'));

?>
<h1>搜索配置</h1>
<form class="form validate" id="form_search" method="post" action="<?=$form_action;?>">
<fieldset>
	<legend>Content Types</legend>
	<p><b>您要在内容搜索中包括哪些内容类型？</b></p>
	<? if (empty($content_types)) { ?>
		<p>没有内容模型可用</p>
	<? } else { ?>
		<ul class="form">
			<? foreach ($content_types as $type) { ?>
				<li style="margin-left: 20px"><input type="checkbox" name="content_type_<?=$type['id'];?>" value="1" <? if (array_key_exists($type['id'],$setting_types)) { ?> checked="checked" <? } ?> /> "<?=$type['name'];?>" - 结果的摘要字段: <?=form_dropdown('summary_field_' . $type['id'],$field_options[$type['id']],(isset($setting_types[$type['id']])) ? $setting_types[$type['id']] : '0' ,'id="summary_field" rel="' . $type['id'] . '" class="populate_fields"');?></li>
			<? } ?>
		</ul>
	<? } ?>
	
</fieldset>

<fieldset>
	<legend>Options</legend>
	<ul class="form">
		<? if (module_installed('store')) { ?>
			<li style="margin-left: 20px">
				<input type="checkbox" name="search_products" id="search_products" value="1" <? if (setting('search_products') == '1') { ?>checked="checked"<? } ?> /> <b>Include store products in search results</b>
			</li>
		<? } ?>
		<li style="margin-left: 20px">
			<b>需要用户等待 <input type="text" name="search_delay" class="number required" style="width: 50px" rel="Search Delay" value="<?=setting('search_delay');?>" /> 秒再次搜索。</b> (建议使用此选项以减少服务器负载。)
		</li>
		<li style="margin-left: 20px">
			<b>如果显示搜索结果的摘要，请将摘要文本修剪为 <input type="text" name="search_trim" class="number required" style="width: 50px" rel="Summary Trim" value="<?=setting('search_trim');?>" /> 字符。</b>
		</li>
	</ul>
</fieldset>

<div class="submit">
	<input type="submit" class="button" name="form_search" value="Save Configuration" />
</div>
</form>
<?=$this->load->view(branded_view('cp/footer'));?>
