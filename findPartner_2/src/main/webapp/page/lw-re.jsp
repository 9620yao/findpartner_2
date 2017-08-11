<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<base href="${deployName }">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>LOG-IN | Amaze UI Examples</title>

<!-- Set render engine for 360 browser -->
<meta name="renderer" content="webkit">

<!-- No Baidu Siteapp-->
<meta http-equiv="Cache-Control" content="no-siteapp" />

<link rel="icon" type="image/png" href="{{assets}}i/favicon.png">

<!-- Add to homescreen for Chrome on Android -->
<meta name="mobile-web-app-capable" content="yes">
<link rel="icon" sizes="192x192" href="{{assets}}i/app-icon72x72@2x.png">

<!-- Add to homescreen for Safari on iOS -->
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="apple-mobile-web-app-title" content="Amaze UI" />
<link rel="apple-touch-icon-precomposed"
	href="assets/i/app-icon72x72@2x.png">

<!-- Tile icon for Win8 (144x144 + tile color) -->
<meta name="msapplication-TileImage"
	content="assets/i/app-icon72x72@2x.png">
<meta name="msapplication-TileColor" content="#0e90d2">

<link type="text/css" rel="stylesheet" href="easyui/themes/icon.css">
<link type="text/css" rel="stylesheet"
	href="easyui/themes/default/easyui.css">
<link rel="stylesheet" href="assets/css/amazeui.min.css">
<link rel="stylesheet" href="assets/css/app.css">
<link rel="stylesheet" href="rel/css/register.css">
</head>
<body>
	<header>
		<div class="log-header" id="log-name">
			<h1>
				<a href="/">findPartner</a>
			</h1>
		</div>
		<div class="log-re">
			<a href="page/lw-log.jsp" style="display: block;"
				class="am-btn am-btn-default am-radius log-button">登 录</a>
		</div>
	</header>

	<div class="log">
		<div class="am-g">
			<div
				class="am-u-lg-3 am-u-md-6 am-u-sm-8 am-u-sm-centered log-content"
				id="log-register">
				<h1 class="log-title am-animation-slide-top">findPartner</h1>
				<br>
				<form class="am-form" id="log-form" action="login/register"
					method="post">
					<p>
						<label style="color: red;">${emailError}&nbsp;</label>
					</p>
					<div class="am-input-group am-radius am-animation-slide-left">
						<input name="email" type="email" id="doc-vld-email-2-1"
							class="am-radius" data-validation-message="请输入正确邮箱地址"
							placeholder="邮箱" required /> <span
							class="am-input-group-label log-icon am-radius"><i
							class="am-icon-user am-icon-sm am-icon-fw"></i></span>
					</div>
					<br>
					<div class="am-input-group am-radius am-animation-slide-left">
						<input name="uname" type="text" class="am-radius" size="32"
							data-validation-message="请输入您的真实姓名" placeholder="真实姓名" required />
					</div>
					<br>
					<div class="am-input-group am-radius am-animation-slide-left">
						<select name="gender" id="gender" class="xla_k"
							style="width: 250px;">
							<option value="男">男</option>
							<option value="女">女</option>
						</select>
					</div>
					<br>
					<div
						class="am-input-group am-animation-slide-left log-animation-delay">
						<input name="password" type="password" id="log-password"
							class="am-form-field am-radius log-input" placeholder="密码"
							minlength="1" required> <span
							class="am-input-group-label log-icon am-radius"><i
							class="am-icon-lock am-icon-sm am-icon-fw"></i></span>
					</div>
					<br>
					<div
						class="am-input-group am-animation-slide-left log-animation-delay-a">
						<input type="password" data-equal-to="#log-password"
							class="am-form-field am-radius log-input" placeholder="确认密码"
							data-validation-message="请确认密码一致" required> <span
							class="am-input-group-label log-icon am-radius"><i
							class="am-icon-lock am-icon-sm am-icon-fw"></i></span>
					</div>
					<br>
					<div>
						<p>
							<input name="vcode" type="text" class="Mail" placeholder="请输入验证码"
								required="required" />
						</p>
						<p>
							<a href="javascript:void(0)"
								style="display: block; border: 1px solid #ffffff; width: 100px"
								class="sendMail" onclick="sendMail()">发送邮件</a>
						</p>
					</div>
					<br>
					<button
						class="am-btn am-btn-primary am-btn-block am-btn-lg am-radius am-animation-slide-bottom log-animation-delay-b">注
						册</button>
					<br>
				</form>
			</div>
		</div>
	</div>

	<script type="text/javascript" src="assets/js/jquery.min.js"></script>

	<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="easyui/locale/easyui-lang-zh_CN.js"></script>

	<script src="assets/js/amazeui.min.js"></script>
	<script type="text/javascript" src="rel/js/login/rel.js"></script>
	<script src="assets/js/app.js"></script>
</body>
</html>
