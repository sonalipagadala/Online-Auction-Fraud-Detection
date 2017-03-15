<%@ page import="java.util.date.*,java.util.text.DateFormat.*,java.text.ParseException.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>	 
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


Connection con=null,con1=null,con2=null;



PreparedStatement psmt1=null,psmt2=null,psmt3=null;
String uid=(String)session.getAttribute("u");
String name=(String)session.getAttribute("name");

String pid=(String)session.getAttribute("pid");
String cname=(String)session.getAttribute("cname1");
String proname=(String)session.getAttribute("pname1");
String wdays=(String)session.getAttribute("wdays1");
String prorate=(String)session.getAttribute("prate1");
String offrate=(String)session.getAttribute("offrate1");
String des=(String)session.getAttribute("offdes1");
String sta=(String)session.getAttribute("sta1");
int days=Integer.parseInt(wdays);

java.util.Date now = new java.util.Date();
	 String DATE_FORMAT1 = "dd/MM/yyyy hh:mm:ss";
	 SimpleDateFormat sdf1 = new SimpleDateFormat(DATE_FORMAT1);
     String strDateNew1 = sdf1.format(now);
Calendar c = Calendar.getInstance();
c.setTime(sdf1.parse(strDateNew1));
c.add(Calendar.DATE, days);  
strDateNew1 = sdf1.format(c.getTime()); 



try{
con=databasecon.getconnection();


psmt1=con.prepareStatement("insert into purchased(uid,uname,pid,comname,proname,wardate,prorate,offrate,offdes,status) values(?,?,?,?,?,?,?,?,?,?)");
psmt1.setString(1,uid);
psmt1.setString(2,name);
psmt1.setString(3,pid);
psmt1.setString(4,cname);
psmt1.setString(5,proname);
psmt1.setString(6,strDateNew1);
psmt1.setString(7,prorate);
psmt1.setString(8,offrate);
psmt1.setString(9,des);
psmt1.setString(10,sta);

psmt1.executeUpdate();


}
catch(Exception ex)
{

out.println("Error in connection : "+ex);

}

String so=null;

try{
con1=databasecon.getconnection();
psmt2=con1.prepareStatement("select *  from offers where pid='"+pid+"'");
ResultSet rs=psmt2.executeQuery();
while(rs.next())
{
so=rs.getString("sold");
}
int so1=Integer.parseInt(so);
int so2=so1+1;
String so3=Integer.toString(so2);


try{
con2=databasecon.getconnection();
psmt3=con2.prepareStatement("update offers set sold='"+so3+"' where pid='"+pid+"'");
psmt3.executeUpdate();
response.sendRedirect("user_home.jsp?message=success");
}
catch(Exception ez)
{

out.println("Error in connection : "+ez);

}




}
catch(Exception ey)
{

out.println("Error in connection : "+ey);

}

%>

</body>
</html>