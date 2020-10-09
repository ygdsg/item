<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    border: 1 none;
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
	margin-top:20px;
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
	text-align:left;
	width:98%;
	font-size:16px;
}
</style>
<body>
<script type="text/javascript" src="/ssm_hr/js/Calendar3.js"></script>

<div id="navi">
	<div id='naviDiv'>
		<span><img src="/ssm_hr/images/arror.gif" width="7" height="11" border="0" alt=""></span>&nbsp;员工管理<span>&nbsp;
		<span><img src="/ssm_hr/images/arror.gif" width="7" height="11" border="0" alt=""></span>&nbsp;<a href="<%=path%>/Emp_list">员工列表</a><span>&nbsp;
	</div>
</div>
<div id="tips">
</div>
<div id="mainContainer">

<strong>修改员工资料</strong>
<br>
<br>

<form name="modifyForm" action="<%=path%>/emp/updateEmp_success" method="post">
<table width="400" >
  <tr>
    <td width="30%">工号：</td>
    <td><input type="text" name="eid" value='${emp.eid}'  readonly="readonly"/></td>
  </tr>
  <tr>
    <td width="30%">姓名：</td>
    <td><input type="text" name="ename" value='${emp.ename}'/></td>
  </tr>
  <tr>
    <td width="30%">登录账号：</td>
    <td><input type="text" name="loginname" value='${emp.loginname}'/></td>
  </tr>
  <tr>
    <td width="30%">密码：</td>
    <td><input type="password" name="loginpwd" value='${emp.loginpwd }'/></td>
  </tr>
  <tr>
    <td>性别：</td>
    <td>
      <c:if test="${emp.sex eq '男'}">
          <input type="radio" name="sex" value="男" checked="checked"/>男
         <input type="radio" name="sex" value="女"/>女
      </c:if>
      <c:if test="${emp.sex eq '女'}">
         <input type="radio" name="sex" value="男" />男
         <input type="radio" name="sex" value="女" checked="checked"/>女
      </c:if>
      </td>
  </tr>
  <tr>
    <td>出生日期：</td>
    <td>
    <input name="birthday" type="text" id="control_date" size="20"
      maxlength="10" onclick="new Calendar().show(this);" readonly="readonly" 
      value='<fmt:formatDate  value="${emp.birthday}" pattern="yyyy-MM-dd"/>'/>  
    </td>
  </tr>
  <tr>
    <td>地址：</td>
    <td><input type="text" name="address" value='${emp.address}'/></td>
  </tr>
   <tr>
    <td>部门：</td>
    <td>
     <select name="d.did">
        <c:forEach items="${depts}" var="ds">
        <c:if test="${emp.d.did eq ds.did}">
          <option value="${ds.id}" selected="selected">${ds.dname}</option>
        </c:if>
        <c:if test="${emp.d.did ne ds.did}">
          <option value="${ds.did}">${ds.dname}</option>
        </c:if>
        </c:forEach>
        
     </select>
    </td>
  </tr>
  <tr>
    <td colspan="2" align="center"><input class="button" type="submit" value="修改"></td>
  </tr>
</table>
</form>


</div>
</body>
</html>