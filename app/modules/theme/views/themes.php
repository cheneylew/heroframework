<?=$this->load->view(branded_view('cp/header'));?>

<h1>主题</h1>

<ul class="themes">
	<? foreach ($themes as $theme) { ?>
		<li>
			<div class="image">
				<img src="<?=$this->theme_model->preview_image($theme);?>" alt="<?=$theme;?>" />
			</div>
			<div class="info">
				<h4><?=$theme;?></h4>
				<? if ($this->config->item('theme') == $theme) { ?>
					<p class="already">当前安装</p>
					<form method="get" action="<?=$this->theme_model->install_url($theme);?>">
					<input type="submit" class="button" name="" value="重装主题" />
					</form>
				<? } else { ?>
					<form method="get" action="<?=$this->theme_model->install_url($theme);?>">
					<input type="submit" class="button" name="" value="安装主题" />
					</form>
				<? } ?>
			</div>
		</li>
	<? } ?>
</ul>

<div style="clear:both"></div>

<?=$this->load->view(branded_view('cp/footer'));?>
