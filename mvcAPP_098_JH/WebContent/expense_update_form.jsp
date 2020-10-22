<%@page import="com.dto.Expense"%>
<%@page import="com.service.ExpenseServiceImple"%>
<%@page import="com.service.ExpenseService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
	int expenseId = Integer.parseInt(request.getParameter("expenseId"));
	ExpenseService expenseService = new ExpenseServiceImple();
	Expense expense = expenseService.findExpense(expenseId);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>add</title>
</head>
<body>
	<form action="expense_update.jsp" method="post" >
		<table align="center" style="background-color: gray;font-size: 25px" >
			<thead>
				<tr>
					<th colspan="2" >Update Expenses</th>
				</tr>
			</thead>
			<tbody>
				<tr><td><input type="hidden" name="expenseId" value="<%=expense.getExpenseId()%>" ></td></tr> 
				<tr>
					<td>Item Name:</td>
					<td><input type="text" name="itemName" value="<%=expense.getItemName()%>"  /> </td>
				</tr>
				<tr>
					<td>Price:</td>
					<td><input type="text" name="price" value="<%=expense.getPrice()%>"  /> </td>
				</tr>
				<tr>
					<td>Purchase Date:</td>
					<td><input type="text" name="purchaseDate" value="<%=expense.getPurchaseDate()%>"  /> </td> 
				</tr>
				<tr>
					<td><a href="expense_list.jsp" >Back</a> </td>
					<td><input type="submit" value="Update"  /> </td>
				</tr>
				
			</tbody>
		</table>
	</form>
</body>
</html>