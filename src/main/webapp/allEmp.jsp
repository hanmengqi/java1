<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>部门>>><span style="color: red">${dname }</span></h1>
	<hr>
	<table align="center" width="60%" border="1">
		<tr>
			<th>员工编号</th>
			<th>员工名称</th>
			<th>性别</th>
			<th>查看员工详情</th>
			<th>删除</th>
			<th>修改</th>
		</tr>
		<c:forEach items="${emps }" var="e">
			<tr align="center">
				<td>${e.eid }</td>
    			<td>${e.ename }</td>
    			<td>${e.egender==1?"男":"女" }</td>
    			<td>
    				<a href="getOne.do?dname=${dname }&eid=${e.eid }">查看</a>
    			</td>
    			<td>
    				<a href="del.do?eid=${e.eid }&did=${did }&dname=${dname }" onclick="return confirm('是否确认删除？')">删除</a>
    			</td>
    			<td>
    				<a href="up.do?eid=${e.eid }&did=${did }&dname=${dname }">修改</a>
    			</td>
			</tr>
		</c:forEach>
		<tr align="center">
			<td colspan="6">
				<a href="change.do?did=${did }&dname=${dname }&index=1">首页</a>
				<a href="change.do?did=${did }&dname=${dname }&index=${p.index-1 }">上一页</a>
				<a href="change.do?did=${did }&dname=${dname }&index=${p.index+1 }">下一页</a>
				<a href="change.do?did=${did }&dname=${dname }&index=${p.maxPage }">尾页</a>
			</td>
		</tr>
	</table>
	<hr>
	<a href="index.jsp">返回首页</a>
	<a href="add.jsp">添加新员工</a>
</body>
</html>