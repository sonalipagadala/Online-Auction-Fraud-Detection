<%@ page  import="java.sql.*" import="databaseconnection.*"%>
<%
String pass=null,uid=null;
try
{
String a = request.getParameter("uid");
String b= request.getParameter("pass");


Connection con = databasecon.getconnection();
Statement st = con.createStatement();

String sss = "select * from admin where userid='"+a+"' && pass='"+b+"'";

ResultSet rs=st.executeQuery(sss);
if(rs.next())
{

response.sendRedirect("admin_home.jsp");
}
else
{
response.sendRedirect("admin_log.jsp?message=fail");
}
}
catch(Exception e1)
{
out.println(e1.getMessage());
}

%>