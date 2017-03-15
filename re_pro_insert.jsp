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

Connection con=null;


PreparedStatement psmt1=null;
FileInputStream fis=null;

String s="Registered";
String tr="Trusted";


String a = request.getParameter("comname");

String b = request.getParameter("proname");
String c = request.getParameter("wardate");
String d = request.getParameter("proimage");
String e = request.getParameter("prorate");
String f="E:\\server\\webapps\\Online Modeling of Proactive code\\product\\";
String g=f+d;
File image=new File(g);
try{
con=databasecon.getconnection();


psmt1=con.prepareStatement("insert into products(comname,proname,wardate,proimage,prorate,status,adminact) values(?,?,?,?,?,?,?)");
psmt1.setString(1,a);
psmt1.setString(2,b);
psmt1.setString(3,c);
fis=new FileInputStream(image);
psmt1.setBinaryStream(4, (InputStream)fis, (int)(image.length()));

psmt1.setString(5,e);
psmt1.setString(6,s);
psmt1.setString(7,tr);

psmt1.executeUpdate();
response.sendRedirect("seller_home.jsp?message=success");

}
catch(Exception ex)
{

out.println("Error in connection : "+ex);

}

%>

</body>
</html>