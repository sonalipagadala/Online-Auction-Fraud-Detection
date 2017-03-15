<%@ page  import="java.sql.*" import="databaseconnection.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
<title>Auction Fraud</title>
<script type="text/javascript">
function valid()
{

var a = document.f.offrate.value;
var b = document.f.des.value;



if(a=="")
{
alert("enter Offer Rate");
document.f.offrate.focus();
return false;
}
if(isNaN(a))
{
alert("enter Offer rate in digits");
document.f.offrate.focus();
return false;
}
if(b=="")
{
alert("enter Offer Description");
document.f.des.focus();
return false;
}
}
</script>
<link href="style.css" rel="stylesheet" media="all" type="text/css" />
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
        <li><a href="user_home.jsp">Products</a></li>
        <li><a href="re_offers.jsp"  class="active">Offers</a></li>
        <li><a href="index.html">Logout</a></li>
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
            <td width="410" bgcolor="#FBF7E1"> <fieldset>
              <legend><strong><em><font color="#FF0000" size="+2" face="Courier New">Offers</font></em></strong></legend>
              <form name="f" action="purchase_insert.jsp" method="post" onsubmit="return valid()">
                <%  
			String pid=request.getQueryString();
			session.setAttribute("pid",pid);
			String pname=null,sta=null,cname=null,offrate=null,offdes=null,prate=null,wdays=null,tr=null,sold=null,del=null,serv=null,dam=null,miss=null;
			
			
			  try
{
	Connection con = databasecon.getconnection();
	Statement st = con.createStatement();	

    String qry="select * from offers where pid='"+pid+"'";
	ResultSet	rs =st.executeQuery(qry);
	if(rs.next())
	{

	cname=rs.getString("comname");
	
	pname=rs.getString("proname");
	wdays=rs.getString("wardate");
	prate=rs.getString("prorate");
	offrate=rs.getString("offrate");
	offdes=rs.getString("offdes");
	sta=rs.getString("status");
	sold=rs.getString("sold");
	del=rs.getString("deliver");
	miss=rs.getString("missmatch");
	serv =rs.getString("service");
	dam =rs.getString("damage");
	tr=rs.getString("adminact");
	
	session.setAttribute("cname1",cname);
	session.setAttribute("pname1",pname);	
	session.setAttribute("wdays1",wdays);	
	session.setAttribute("prate1",prate);
	session.setAttribute("offrate1",offrate);		
	session.setAttribute("offdes1",offdes);	
	session.setAttribute("sta1",sta);
	session.setAttribute("tr",tr);
	
	String ans=null;
	if(sold.equals("0"))
	 {
	ans="100";
	 }
	 else
	 {
	
	 int sold1=Integer.parseInt(sold);
	 
	 
	  int del1=Integer.parseInt(del);
	  int miss1=Integer.parseInt(miss);
	  int serv1=Integer.parseInt(serv);
	  int dam1=Integer.parseInt(dam);
	  
	  int sum=del1+miss1+serv1+dam1;

      Double sum1=sum/((0.01)*(sold1));
//System.out.println(sum1);

	
	 Double tru=100-sum1;
	 ans=Double.toString(tru);
	 }
	
	%>
                <table cellpadding="10" cellspacing="10">
                  <tr> 
                    <td colspan="2" align="center"><font size="2"><b> 
                      <%
                                                       String message=request.getParameter("message");
                                                       if(message!=null && message.equalsIgnoreCase("success"))
                                                       {
                                                               out.println("<fieldset><font color='red'><blink>Offer Successfully Registered !</blink></font></fieldset>");
                                                       }
                                               %>
                      </b></font></td>
                  </tr>
                  <tr> 
                    <td width="161" align="left"><font color="#333366" size="+1" face="Georgia, Times New Roman, Times, serif"><strong>Product 
                      ID:</strong></font></td>
                    <td width="162" align="center"><font color="#FF0000" size="+1"><strong><%=pid%></strong></font></td>
                  </tr>
                  <tr> 
                    <td width="161" align="left"><font color="#333366" size="+1" face="Georgia, Times New Roman, Times, serif"><strong>Company 
                      Name:</strong></font></td>
                    <td width="162" align="center"><font color="#FF6600" size="+1"><strong><%=cname%></strong></font></td>
                  </tr>
                  <tr> 
                    <td align="left"><font color="#333366" size="+1" face="Georgia, Times New Roman, Times, serif"><strong>Product 
                      Name:</strong></font></td>
                    <td align="center"><font color="#FF6600" size="+1"><strong><%=pname%></strong></font></td>
                  </tr>
                  <tr> 
                    <td align="left"><font color="#333366" size="+1" face="Georgia, Times New Roman, Times, serif"><strong>Warrenty 
                      Days:</strong></font></td>
                    <td align="center"><font color="#FF6600" size="+1"><strong><%=wdays%></strong></font></td>
                  </tr>
                  <tr> 
                    <td align="left"><font color="#333366" size="+1" face="Georgia, Times New Roman, Times, serif"><strong>Product 
                      Rate:</strong></font></td>
                    <td align="center"><font color="#FF6600" size="+1"><strong><%=prate%></strong></font></td>
                  </tr>
                  <tr> 
                    <td align="left"><font color="#333366" size="+1" face="Georgia, Times New Roman, Times, serif"><strong>Offer 
                      Rate:</strong></font></td>
                    <td align="center"><font color="#FF6600" size="+1"><strong><%=offrate%></strong></font></td>
                  </tr>
                  <tr> 
                    <td align="left"><font color="#333366" size="+1" face="Georgia, Times New Roman, Times, serif"><strong>Offer 
                      Description:</strong></font></td>
                    <td align="center"><font color="#FF6600" size="+1"><strong><%=offdes%></strong></font></td>
                  </tr>
                  <tr> 
                    <td align="left"><font color="#333366" size="+1" face="Georgia, Times New Roman, Times, serif"><strong>Status:</strong></font></td>
                    <td align="center"><font color="#FF6600" size="+1"><strong><%=sta%></strong></font></td>
                  </tr>
                  <tr> 
                    <td align="left"><font color="#333366" size="+1" face="Georgia, Times New Roman, Times, serif"><strong>Trust:</strong></font></td>
                    <td align="center"><font color="#FF6600" size="+1"><strong><%=tr%></strong></font></td>
                  </tr>
                  <tr> 
                    <td align="right"><a href="user_home.jsp"><strong><em><font color="#FF0000" size="+1">back</font></em></strong></a></td>
                    <td><input type="submit" name="sub" value="Purchase" class="btn"></td>
                  </tr>
                </table>
              </form>
              </fieldset></td>
            <td width="200" bgcolor="#FBF7E1" align="center"><strong><em><font color="#FF0000" size="+1" face="Courier New">Product 
              Image:</font></em></strong><br> <br> <img src="image.jsp?product_name=<%=pid%>" height="212" width="165"><br> 
              <br> <br> <br> <font color="#FF0000" size="+1" face="Courier New"><strong>Trustability</strong></font><br> 
              <br> <br> <img src="images/sca1.jpg" width="50" height="100"> <img src="images/bar_gree.jpg" width="50" height="<%=ans%>"> 
              <br> <br> <font size="+1" color="#6633FF"> <%=ans%></font>&nbsp;<font size="+1" color="#FF0000"><strong>%</strong></font> 
            </td>
        </table></td>
        </tr> </table> </div>
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

<%
 }
		
	else
	{
	response.sendRedirect("user_home.jsp?message=fail");
	}
	

				}
	   catch(Exception e1)
	   {
	     out.println(e1.getMessage());
	   }
	   %>