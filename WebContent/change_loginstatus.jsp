<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,project.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
   HttpSession session1 = request.getSession(false);
   add_del ob1 = new add_del();
   ob1.connect();
   boolean result= ob1.Chngeloginst_0();
   session1.invalidate();
%>
<jsp:forward page="index.html"></jsp:forward>
</body>
</html>