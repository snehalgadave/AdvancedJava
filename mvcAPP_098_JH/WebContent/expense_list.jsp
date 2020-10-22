<%@page import="com.dto.Expense"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.service.ExpenseServiceImple"%>
<%@page import="com.service.ExpenseService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:useBean id="user" class="com.dto.User" scope="session" ></jsp:useBean>    
    
 <%
	ExpenseService expenseService = new ExpenseServiceImple();  
 	ArrayList<Expense> list = expenseService.expenseList(user.getUserId());
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>expense list Page</title>
</head>
<body>
	
		<table align="center" style="background-color: gray;font-size: 25px" >
			<thead>
				
				<tr>
					<th >Item</th>
					<th >Price</th>
					<th >Date</th>
					<th >Delete</th>
					<th >Update</th>
				</tr>
				
			</thead>
			<tbody>
				<% 
					for(Expense e : list){
				%>
				<tr>
					<td style="text-align: center;" ><%=e.getItemName()%></td>
					<td style="text-align: center;" ><%=e.getPrice()%></td>
					<td style="text-align: center;" ><%=e.getPurchaseDate()%></td>
					<td style="text-align: center;" ><a href="expense_delete.jsp?expenseId=<%=e.getExpenseId()%>" >Delete</a></td>
					<td style="text-align: center;" ><a href="expense_update_form.jsp?expenseId=<%=e.getExpenseId()%>" >Update</a></td>
				</tr>
				<% } %>
				
				
			</tbody>
		</table>
	
</body>
</html>