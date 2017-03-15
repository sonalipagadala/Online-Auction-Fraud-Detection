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

String sta="Registered";

String proid=(String)session.getAttribute("proid");
String cname=(String)session.getAttribute("cname");
String proname=(String)session.getAttribute("pname");
String wdays=(String)session.getAttribute("wdays");
String prorate=(String)session.getAttribute("prorate");

String offrate=request.getParameter("offrate");
String des=request.getParameter("des");
String e="0";
String com="0";
String tr="Trusted";


try{
con=databasecon.getconnection();


psmt1=con.prepareStatement("insert into offers(pid,comname,proname,wardate,prorate,offrate,offdes,status,sold,deliver,missmatch,service,damage,complaint,feed,adminact) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
psmt1.setString(1,proid);
psmt1.setString(2,cname);
psmt1.setString(3,proname);
psmt1.setString(4,wdays);
psmt1.setString(5,prorate);
psmt1.setString(6,offrate);
psmt1.setString(7,des);
psmt1.setString(8,sta);
psmt1.setString(9,e);
psmt1.setString(10,e);
psmt1.setString(11,e);
psmt1.setString(12,e);
psmt1.setString(13,e);
psmt1.setString(14,com);
psmt1.setString(15,e);
psmt1.setString(16,tr);

psmt1.executeUpdate();
response.sendRedirect("re_offers.jsp");

}
catch(Exception ex)
{

out.println("Error in connection : "+ex);

}

%>

</body>
</html>