<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
	<meta http-equiv="content-type" content="text/html;charset=UTF-8">
	<link rel="stylesheet" type="text/css" href="/ssm_hr/css/default.css" />
<style type="text/css">
* {
    background: none repeat scroll 0 0 transparent;
    border: 0 none;
    margin: 0;
    padding: 0;
    vertical-align: baseline;
	font-family:微软雅黑;
	overflow:hidden;
}
#navi{
	width:100%;
	position:relative;
	word-wrap:break-word;
	border-bottom:1px solid #065FB9;
	margin:0;
	padding:0;
	height:40px;
	line-height:40px;
	vertical-align:middle;
    background-image: -moz-linear-gradient(top,#EBEBEB, #BFBFBF);
    background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0, #EBEBEB),color-stop(1, 
#BFBFBF));
}
#naviDiv{
	font-size:14px;
	color:#333;
	padding-left:10px;
}
#tips{
	margin-top:10px;
	width:100%;
	height:40px;
}
#buttonGroup{
	padding-left:10px;
	float:left;
	height:35px;
}
.button{
	float:left;
	margin-right:10px;
	padding-left:10px;
	padding-right:10px;
	font-size:14px;
	width:70px;
	height:30px;
	line-height:30px;
	vertical-align:middle;
	text-align:center;
	cursor:pointer;
    border-color: #77D1F6;
    border-width: 1px;
    border-style: solid;
    border-radius: 6px 6px;
    -moz-box-shadow: 2px 2px 4px #282828;
    -webkit-box-shadow: 2px 2px 4px #282828;
    background-image: -moz-linear-gradient(top,#EBEBEB, #BFBFBF);
    background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0, #EBEBEB),color-stop(1, #BFBFBF));
}
#mainContainer{
	padding-left:10px;
	padding-right:10px;
	text-align:center;
	width:98%;
	font-size:12px;
}
</style>
<body>
<div id="navi">
	<div id='naviDiv'>
		<span><img src="/ssm_hr/images/arror.gif" width="7" height="11" border="0" alt=""></span>&nbsp;员工管理<span>&nbsp;
		<span><img src="/ssm_hr/images/arror.gif" width="7" height="11" border="0" alt=""></span>&nbsp;<a href="<%=path%>/Emp_list">员工列表</a><span>&nbsp;
	</div>
</div>
<div id="tips">
	<div id="buttonGroup">
		<div class="button" onmouseout="this.style.backgroundColor='';this.style.fontWeight='normal'" onmouseover="this.style.backgroundColor='#77D1F6';this.style.fontWeight='bold'">
			<a href="<%=path%>/emp/getDept">添加员工</a>
		</div>
		<div class="button" onmouseout="this.style.backgroundColor='';this.style.fontWeight='normal'" onmouseover="this.style.backgroundColor='#77D1F6';this.style.fontWeight='bold'">
			<a>查找员工</a>
		</div>
	</div>
</div>
<div id="mainContainer">

<table class="default" width="100%">
	<col width="10%">
	<col width="15%">
	<col width="15%">
	<col width="5%">
	<col width="20%">
	<col width="15%">
	<col width="10%">
	<col width="10%">
	<tr class="title">
		<td>工号</td>
		<td>姓名</td>
		<td>登录名</td>
		<td>性别</td>
		<td>出生日期</td>
		<td>地址</td>
		<td>所属部门</td>
		<td>操作</td>
	</tr>
	<c:forEach items="${emps}" var="es">
	<tr class="list">
		<td>${es.eid}</td>
		<td><a href="<%=path%>/emp/updateEmp/${es.eid}">${es.ename}</a></td>
		<td>${es.loginname}</td>
		<td>${es.sex}</td>
		<td><fmt:formatDate value="${es.birthday}" pattern="yyyy年MM月dd日"/></td>
		<td>${es.address}</td>
		<td>${es.d.dname}</td>
		<td><a href="<%=path%>/emp/deleteEmp/${es.eid}" onclick="javascript: return confirm('确定要删除该员工吗？');">删除</a></td>
	</tr>
	</c:forEach>
</table><br/>
          第${pagenow}/${pagecount}页&nbsp;&nbsp;
	<a href="<%=path%>/Emp_list?pn=1">首页</a>&nbsp;&nbsp;
    <c:if test="${pagenow eq 1}">
    <a href="<%=path%>/Emp_list?pn=1" disabled="disabled">上一页</a>
    </c:if>
    <c:if test="${pagenow ne 1}">
    <a href="<%=path%>/Emp_list?pn=${pagenow-1}">上一页</a>
    </c:if>&nbsp;&nbsp;
    <c:forEach begin="1" end="${pagecount}" varStatus="vs">
      <a href="<%=path%>/Emp_list?pn=${vs.index}">${vs.index}</a>
    </c:forEach>&nbsp;&nbsp;
    <c:if test="${pagenow eq pagecount}">
    <a href="<%=path%>/Emp_list?pn=${pagecount}" disabled="disabled">下一页</a>
    </c:if>
    <c:if test="${pagenow ne pagecount}">
    <a href="<%=path%>/Emp_list?pn=${pagenow+1}">下一页</a>
    </c:if>&nbsp;&nbsp;
    <a href="<%=path%>/Emp_list?pn=${pagecount}">末页</a>
</div>
</body>
</html>