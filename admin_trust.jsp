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
	  
	  int sum=del1+miss1+serv1+dam1;

      Double sum1=sum/((0.01)*(sold1));
//System.out.println(sum1);
	  double t=50.0;
	  Double tru=100-sum1;
	  
	  %>
              <fieldset>
              <br>
              <br>
              <table width="513" height="394" cellpadding="5" cellspacing="5">
                <tr> 
                  <td width="250"><font face="Georgia, Times New Roman, Times, serif" color="#330033" size="+1"><strong>Product 
                    ID</strong></font></td>
                  <td width="162"><font face="Courier New, Courier, mono" size="+2" color="#FF3300"><strong><%=tpid%></strong></font></td>
                </tr>
                <tr> 
                  <td><font face="Georgia, Times New Roman, Times, serif" color="#330033" size="+1"><strong> 
                    Product Name</strong></font></td>
                  <td><font face="Georgia, Times New Roman, Times, serif" color="#FF0000" size="+1"><%=pname%></font></td>
                </tr>
                <tr> 
                  <td><font face="Georgia, Times New Roman, Times, serif" color="#330033" size="+1"><strong>Company 
                    Name</strong></font></td>
                  <td><font face="Georgia, Times New Roman, Times, serif" color="#FF0000" size="+1"><%=cname%></font></td>
                </tr>
				<tr> 
                  <td><font face="Georgia, Times New Roman, Times, serif" color="#330033" size="+1"><strong>Number of Sold 
                    </strong></font></td>
                  <td><font face="Georgia, Times New Roman, Times, serif" color="#FF0000" size="+1"><%=sold%></font></td>
                </tr>
                <tr> 
                  <td><strong><font face="Georgia, Times New Roman, Times, serif" color="#330033" size="+1">Complaints</font></strong></td>
                  <td> <img src="images/sca1.jpg" width="50" height="100"> <img src="images/bar_red1.jpg" width="50" height="<%=sum1%>"> 
                    <br> <br> <font size="+1" color="#6633FF"> <%=sum1%></font>&nbsp;<font size="+1" color="#FF0000"><strong>%</strong></font></td>
                </tr>
                <tr> 
                <tr> 
                  <td><font face="Georgia, Times New Roman, Times, serif" color="#330033" size="+1"><strong>Trustability</strong></font></td>
                  <td > <img src="images/sca1.jpg" width="50" height="100"> <img src="images/bar_gree.jpg" width="50" height="<%=tru%>"> 
                    <br> <br> <font size="+1" color="#6633FF"> <%=tru%></font>&nbsp;<font size="+1" color="#FF0000"><strong>%</strong></font></td>
                </tr>
                <tr></tr>
                <tr></tr>
                <tr> 
                  <td><a href="admin_home.jsp"><strong><font size="+1" face="Courier New" color="#FF0000">Back</font></strong></a></td>
                  <td><a href="more_det.jsp?<%=tpid%>"><strong><font size="+1" face="Courier New" color="#FF0000">More 
                    Details</font></strong></a></td>
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
      <strong><font color="#33CC66">WWW.online.com</font></strong> </div>
    <!-- /footer -->
  </div>
  <!-- /container -->
</div>
<!-- /wrapper -->
</body>
</html>
