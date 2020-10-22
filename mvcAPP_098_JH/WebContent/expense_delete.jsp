<%@page import="com.service.ExpenseServiceImple"%>
<%@page import="com.service.ExpenseService"%>
<%
	int expenseId = Integer.parseInt(request.getParameter("expenseId"));
	ExpenseService expenseService = new ExpenseServiceImple();
	expenseService.removeExpense(expenseId);
	response.sendRedirect("expense_list.jsp");
%>