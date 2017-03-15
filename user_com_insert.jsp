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
 
 String pid1=(String)session.getAttribute("pid1");

String a = request.getParameter("op");
 String a1="deliver";
  String b1="missmatch";
   String c1="service";
    String d1="damage";
	String m=null;
	if(a.equals(a1))
	{
	m=a1;
	}
	else if(a.equals(b1))
	{
	 m=b1;
	}
	else if(a.equals(c1))
	{
	 m=c1;
	}
	else if(a.equals(d1))
	{
	 m=d1;
	}
	 
	 
	
/*String b = request.getParameter("com1");
String c = request.getParameter("wardate");
String d = request.getParameter("proimage");
String e = request.getParameter("prorate");*/

String err=null;

//for complaint select 

try{
con=databasecon.getconnection();


psmt1=con.prepareStatement("select * from offers where pid='"+pid1+"' ");

ResultSet rs=psmt1.executeQuery();
while(rs.next())
{
err=rs.getString(m);
}
int err1=Integer.parseInt(err);
int err2=err1+1;
String error=Integer.toString(err2);


//for complaint update
try{
con1=databasecon.getconnection();
if(a.equals(a1))
	{
	psmt2=con1.prepareStatement("Update offers set deliver='"+error+"' where pid='"+pid1+"' ");
	}
	else if(a.equals(b1))
	{
	 psmt2=con1.prepareStatement("Update offers set missmatch='"+error+"' where pid='"+pid1+"' ");
	}
	else if(a.equals(c1))
	{
	psmt2=con1.prepareStatement("Update offers set service='"+error+"' where pid='"+pid1+"' ");
	}
	else if(a.equals(d1))
	{
	psmt2=con1.prepareStatement("Update offers set damage='"+error+"' where pid='"+pid1+"' ");
	}
	response.sendRedirect("user_complaint.jsp?message=success");

psmt2.executeUpdate();
}

catch(Exception ey)
{

out.println("Error in connection : "+ey);

}


}
catch(Exception ex)
{

out.println("Error in connection : "+ex);

}

%>

</body>
</html>