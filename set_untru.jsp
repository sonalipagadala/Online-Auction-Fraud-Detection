<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>treasure warehouse</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script type="text/javascript">

</script>
</head>

<body>

<%

Connection con=null,con1=null;


PreparedStatement psmt1=null,psmt2=null;
String a=request.getQueryString();

String tr="Untrusted";

try{
con=databasecon.getconnection();


psmt1=con.prepareStatement("update offers set adminact='"+tr+"'  where pid='"+a+"'");
psmt1.executeUpdate();
}
catch(Exception ex)
{
out.println("Error in connection : "+ex);
}




try{
con1=databasecon.getconnection();


psmt2=con1.prepareStatement("update products set adminact='"+tr+"' where pid='"+a+"'");
psmt2.executeUpdate();
response.sendRedirect("admin_home.jsp");
}
catch(Exception eY)
{
out.println("Error in connection : "+eY);
}

%>

</body>
</html>