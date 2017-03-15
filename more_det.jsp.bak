<%@ page  import="java.sql.*" import="databaseconnection.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>

<meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
<title>Auction Fraud</title>
<link href="style.css" rel="stylesheet" media="all" type="text/css" />
<style type="text/css">
#bg
{
background-color:white;

width:50px;
height:100px;
} 
</style>
</head>

<body>
<div id="wrapper"> 
  <div id="container"> 
    <div id="header"> 
      <div id="logo"><br>
        <br>
        <br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong><font color="#FFFFFF" size="+2" face="Georgia, Times New Roman, Times, serif"> 
        Online Modeling of Proactive Moderation System for <br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Auction Fraud Detection</font></strong></div>
    </div>
    <!-- /header -->
    <div id="navbar"> 
      <ul>
        <li><a href="admin_home.jsp" class="active">Home</a></li>
        <!-- <li><a href="#">Admin</a></li>
        <li><a href="#">Link</a></li>
        <li><a href="#">Link</a></li>
        <li><a href="#">Link</a></li>-->
      </ul>
    </div>
    <!-- /navbar -->
    <div id="main"> 
      <div id="intro"> 
        <!-- <div id="sellerpic">
        </div>-->
        <!-- /jakepic -->
        <div id="text"> </div>
        <!-- /text -->
        <table height="350" align="center" width="700">
          <tr bgcolor="#CC3300"> 
            <td width="610" bgcolor="#FBF7E1" align="center"><strong><font color="#FF3300" size="+1" face="Georgia, Times New Roman, Times, serif"><br>
              <br>
              Product Survey Status</font></strong> <br> <br> <br> 
              <%
			
			String tpid=request.getQueryString();
			
			String sold=null,del=null,miss=null,serv=null,dam=null,pname=null,cname=null;
ResultSet rs=null;
try
{
	Connection con = databasecon.getconnection();
	Statement st = con.createStatement();	

    String qry="select * from offers where pid='"+tpid+"'";
		rs =st.executeQuery(qry);
	while(rs.next())
	{
    pname=rs.getString("proname");
	cname=rs.getString("comname");
	
	sold=rs.getString("sold");
	del=rs.getString("deliver");
	miss=rs.getString("missmatch");
	serv =rs.getString("service");
	dam =rs.getString("damage");
	}
	  
      int sold1=Integer.parseInt(sold);
	  int del1=Integer.parseInt(del);
	  int miss1=Integer.parseInt(miss);
	  int serv1=Integer.parseInt(serv);
	  int dam1=Integer.parseInt(dam);
	  
	  

      Double del2=del1/((0.01)*(sold1));
	  Double miss2=miss1/((0.01)*(sold1));
	  Double serv2=serv1/((0.01)*(sold1));
	  Double dam2=dam1/((0.01)*(sold1));

	
	
	  
	  %>
              <fieldset>
              <br>
              <br>
              <table width="612" height="250" cellpadding="5" cellspacing="5">
                <tr> 
                  <td align="center"><strong><font color="#669900" size="+1" style="text-decoration:underline;">Complaints 
                    About</font></strong></td>
                  <td align="center"><strong><font color="#669900" size="+1" style="text-decoration:underline;">Values</font></strong></td>
                </tr>
                <tr></tr>
                <tr></tr>
                <tr> 
                  <td><font size="+1" face="Courier New" color="#660066"><strong>Product 
                    Not Delivered</strong></font></td>
                  <td><img src="images/sca1.jpg" width="50" height="100"> <img src="images/bar_red1.jpg" width="50" height="<%=del2%>"> 
                    <strong><font color="#990000" size="+1"><%=del2%></font></strong>&nbsp;<font color="#FF0000" size="+2">%</font> 
                  </td>
                </tr>
                <tr></tr>
                <tr></tr>
                <tr> 
                  <td><font size="+1" face="Courier New" color="#660066"><strong>Product 
                    MissMatch</strong></font></td>
                  <td><img src="images/sca1.jpg" width="50" height="100"> <img src="images/bar_red1.jpg" width="50" height="<%=miss2%>"> 
                    <strong><font color="#990000" size="+1"><%=miss2%></font></strong>&nbsp;<font color="#FF0000" size="+2">%</font> 
                  </td>
                </tr>
                <tr></tr>
                <tr></tr>
                <tr> 
                  <td><font size="+1" face="Courier New" color="#660066"><strong>Poor 
                    Service</strong></font></td>
                  <td><img src="images/sca1.jpg" width="50" height="100"> <img src="images/bar_red1.jpg" width="50" height="<%=serv2%>"> 
                    <strong><font color="#990000" size="+1"><%=serv2%></font></strong>&nbsp;<font color="#FF0000" size="+2">%</font> 
                  </td>
                </tr>
                <tr></tr>
                <tr></tr>
                <tr> 
                  <td><font size="+1" face="Courier New" color="#660066"><strong>Product 
                    Damaged</strong></font></td>
                  <td><img src="images/sca1.jpg" width="50" height="100"> <img src="images/bar_red1.jpg" width="50" height="<%=dam2%>"> 
                    <strong><font color="#990000" size="+1"><%=dam2%></font></strong>&nbsp;<font color="#FF0000" size="+2">%</font> 
                  </td>
                </tr>
                <tr></tr>
                <tr></tr>
                <tr></tr>
                <tr></tr>
                <tr></tr>
                <tr></tr>
                <tr></tr>
                <tr></tr>
                <tr> 
                  <td align="center"><a href="admin_home.jsp"><strong><font size="+1" face="Courier New" color="#FF0000">Back</font></strong></a></td>
                  <td align="center"><a href="set_untru.jsp?<%=tpid%>"><strong><font size="+1" face="Courier New" color="#FF0000">Set 
                    Untrusted</font></strong></a><br> <br> <br> <a href="set_block.jsp?<%=tpid%>"><strong><font size="+1" face="Courier New" color="#FF0000">Block 
                    This Product</font></strong></a></td>
                </tr>
              </table>
              <br>
              <br>
              </fieldset>
              <%
	 
	   }
	   catch(Exception e1)
	   {
	     out.println(e1.getMessage());
	   }
 %>
            </td>
          </tr>
        </table>
      </div>
      <!-- /intro -->
      <div id="columns-wrapper"> 
        <!-- /form-intro -->
        <!-- /newsletter -->
        <!-- /right -->
        <!-- /left -->
      </div>
      <!-- /columns-wrapper -->
    </div>
    <!-- /main -->
    <div id="footer"> 
      <div id="footer-right">&nbsp;</div>
      <div id="footer-left">&nbsp;</div>
      <br>
      <br>
      <strong><font color="#33CC66">WWW.chennaisunday.com</font></strong> </div>
    <!-- /footer -->
  </div>
  <!-- /container -->
</div>
<!-- /wrapper -->
</body>
</html>
