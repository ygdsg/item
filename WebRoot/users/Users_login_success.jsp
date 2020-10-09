<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
	<title>后台管理</title>
	<meta http-equiv="content-type" content="text/html;charset=UTF-8">
	<link rel="stylesheet" type="text/css" href="../css/index.css" />
</head>
<script type="text/javascript">
    function showTime()
    {
      var now=new Date();
      var y=now.getFullYear();
      var m=now.getMonth()+1;    //0~6
      var d=now.getDate();
      
      var week=new Array("日","一","二","三","四","五","六");
      var wk=week[now.getDay()];
      //var wk=now.getDay();   //0~6
      var t=y+"年"+m+"月"+d+"日   星期"+wk;
      document.getElementById("time").innerText=t;
    }
    setInterval("showTime()",1000);
</script>
<body>
<div id="wrapper">
	<div id="header">
		<div id="logo">LOGO</div>
		<div id="title">HR管理系统</div>
		<div id="user_info">
			<div id="welcome"><a id="time"></a></div>
		</div>
	</div>
	<div id="navigator">
		<iframe src="../tree.jsp"></iframe>
        </div>
	<div id="main">
		<iframe name="MainFrame" src="/ssm_hr/users/Users_login_main.jsp"></iframe>
	</div>
	<div id="footer">Copyright © 2009-2019 All Rights Reserved Powered By Mr Dandan</div>
</div>
</body>
<script type="text/javascript">
function screenAdapter(){
	document.getElementById('footer').style.top=document.documentElement.scrollTop+document.documentElement.clientHeight- document.getElementById('footer').offsetHeight+"px";
		document.getElementById('navigator').style.height=document.documentElement.clientHeight-100+"px";
		document.getElementById('main').style.height=document.documentElement.clientHeight-100+"px";
		document.getElementById('main').style.width=window.screen.width-230+"px";
}

window.onscroll=function(){screenAdapter();};
window.onresize=function(){screenAdapter();};
window.onload=function(){screenAdapter();};
</script>
</html>