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

Connection con=null;


PreparedStatement psmt1=null;
String a=request.getQueryString();

String tr="Registered";

try{
con=databasecon.getconnection();


psmt1=con.prepareStatement("update seller set authorize='"+tr+"'  where uid='"+a+"'");
psmt1.executeUpdate();
response.sendRedirect("admin_seller.jsp");
}
catch(Exception ex)
{
out.println("Error in connection : "+ex);
}



%>

</body>
</html>