<%@page import="com.service.ExpenseServiceImple"%>
<%@page import="com.service.ExpenseService"%>
<jsp:useBean id="user" class="com.dto.User" scope="session" ></jsp:useBean>
<jsp:useBean id="expense" class="com.dto.Expense" scope="page" ></jsp:useBean>
<jsp:setProperty property="*" name="expense"/>
<%
	//System.out.println(user);
	expense.setUserId(user.getUserId());
	ExpenseService expenseService = new ExpenseServiceImple();
	int i = expenseService.addExpense(expense);
	response.sendRedirect("expense_add_form.jsp?msg="+i);
%>