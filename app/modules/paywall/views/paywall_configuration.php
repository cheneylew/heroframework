<?php $this->load->view(branded_view('cp/header')); ?>

<h1>支付网关配置</h1>

<form class="form validate" method="post" action="admincp/paywall/save">

<h2>自动付款墙</h2>
<p>自动付款墙会在您的用户访问受限于其访问权限的网页时将其重定向到“付费墙”页面。默认情况下，此付费墙将包含登录表单，注册/订阅链接，以及您的网站的小型营销宣传。但是，您可以修改模板文件（如下所述）以包含或说出任何您想要的。</p>
	
	<ul class="form">
		<li>
			<label>自动付款</label> <?=form_radio('paywall_auto','1', ($paywall_auto == '1') ? TRUE : FALSE);?> On&nbsp;&nbsp;&nbsp; <?=form_radio('paywall_auto','0', ($paywall_auto == '0') ? TRUE : FALSE);?> Off
		</li>
		<li>
			<label>付款模板</label> <?=form_dropdown('paywall_template', $template_files, $paywall_template);?>
		</li>
		<li class="indent">
			<label>&nbsp;</label><input type="submit" class="submit button" name="" value="保存配置" />
		</li>
	</ul>
</form>
<br />
<h2>手动支付和权限控制</h2>
<p>如果您选择不使用Auto-Paywall并手动处理访问权限问题，那就没问题了。有模板功能插件，这将帮助你处理权限问题在模板中。例如，在您的<span class="code">content.thtml</span>模板中，您可能具有以下内容:</p>
<pre class="code">
	{extends file="layout.thtml"}
	{restricted in_group=$privileges}
		&lt;h1&ht;{$title}&lt;/h1&gt;
		{$body}
	{/restricted}
	
	{restricted not_in_group=$privileges}
		You do not have access to see this content.  <a href="{url path="users/login"}">Login</a> or <a href="{url path="subscriptions"}">Subscribe</a>
		to gain access today!
	{/restricted}
</pre>
<?=$this->load->view(branded_view('cp/footer'));?>
