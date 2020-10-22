<%@page import="com.service.UserServiceImple"%>
<%@page import="com.service.UserService"%>
<jsp:useBean id="user" class="com.dto.User" scope="session" ></jsp:useBean>
<jsp:setProperty property="*" name="user"/>
<%
	UserService userService = new UserServiceImple();
	boolean b = userService.login(user);
	if(b){
		response.sendRedirect("home.jsp");
	}else{
		Cookie cookie = new Cookie("user_name",user.getUserName());
		cookie.setMaxAge(60*60*24);
		response.addCookie(cookie);
		response.sendRedirect("login.jsp?error_msg=wrong credentials");
	}
%>