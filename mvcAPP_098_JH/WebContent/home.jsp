<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ include file="cache_control.jsp" %>
<%@ include file="header.jsp" %>
<jsp:useBean id="user" class="com.dto.User" scope="session" ></jsp:useBean>
<% 
	if(user !=null && user.getUserId()>0){
%>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<body>
	
		<table align="center" style="background-color: gray;font-size: 25px" >
			<thead>
				<tr>
					<th colspan="2" >Home Page</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><a href="expense_add_form.jsp" >Add Expenses</a></td>
					
				</tr>
				<tr>
					<td><a href="expense_list.jsp" >Expense List</a></td>				
				</tr>
				
			</tbody>
		</table>
	
</body>
</html>
<% }else{
	response.sendRedirect("login.jsp");	
	}
	%>
