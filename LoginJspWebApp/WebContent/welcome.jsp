<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
</head>
<body>
   <%@ include file="header.html" %>
<%!
 int count =0;
 String name;
 public void setName(String name){
	 this.name=name;
 }
 public String getName(){
	 return name;
 }
%>
<%-- Scriplet --%>
<% 
 String username = request.getParameter("username");
 setName(username);
 session.setAttribute("uname",username);
 session.setMaxInactiveInterval(5);
 String productUrlEnc = response.encodeURL("product.jsp");
 %>
 
 <p>Dear <%=getName() %> Welcome to online shopping of zensar</p>
 <p>your session time out period is <%= session.getMaxInactiveInterval() %>seconds</p>
 <p> To view and Purchase products <a href="<%=productUrlEnc%>">click here</a> </p>

   <%@ include file="footer.html" %>

</body>
</html>