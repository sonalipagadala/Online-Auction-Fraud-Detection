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
<%
String pid =request.getQueryString();
String sname=(String)session.getAttribute("sname");
String scname=(String)session.getAttribute("scname");

			
			String cname=null,pname=null,wdays=null,prate=null;
ResultSet rs=null;
String sta="Registered";
try
{
	Connection con = databasecon.getconnection();
	Statement st = con.createStatement();	

    String qry="select * from products where pid ='"+pid+"'";
		rs =st.executeQuery(qry);
	while(rs.next())
	{
	pid=rs.getString("pid");
	cname=rs.getString("comname");
	
	pname=rs.getString("proname");
	wdays=rs.getString("wardate");
	prate=rs.getString("prorate");
	
	
	session.setAttribute("proid",pid);
	session.setAttribute("cname",cname);	
	session.setAttribute("pname",pname);
	session.setAttribute("wdays",wdays);
	session.setAttribute("prorate",prate);

	}
	
	 
%>

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
        <li><a href="seller_home.jsp">Products</a></li>
        <li><a href="re_offers.jsp"  class="active">Offers</a></li>
        <li><a href="index.html">Logout</a></li>
        <!-- <li><a href="#">Admin</a></li>
        <li><a href="#">Link</a></li>
        <li><a href="#">Link</a></li>
        <li><a href="#">Link</a></li>-->
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font size="+1" face="Georgia, Times New Roman, Times, serif" color="#00FFCC">Welcome:&nbsp;</font><font size="+1" color="#FF0000"><%=sname%></font> 
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
              <form name="f" action="re_offer_insert.jsp" method="post" onsubmit="return valid()">
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
                    <td width="161" align="center"><font color="#333366" size="+1" face="Georgia, Times New Roman, Times, serif"><strong>Product 
                      ID:</strong></font></td>
                    <td width="162" align="center"><font color="#FF0000" size="+1"><strong><%=pid%></strong></font></td>
                  </tr>
                  <tr> 
                    <td width="161" align="center"><font color="#333366" size="+1" face="Georgia, Times New Roman, Times, serif"><strong>Company 
                      Name:</strong></font></td>
                    <td width="162" align="center"><input type="text" name="comname" disabled value="<%=cname%>" id="b"></td>
                  </tr>
                  <tr> 
                    <td align="center"><font color="#333366" size="+1" face="Georgia, Times New Roman, Times, serif"><strong>Product 
                      Name:</strong></font></td>
                    <td align="center"><input type="text" name="proname" disabled value="<%=pname%>" id="b"></td>
                  </tr>
                  <tr> 
                    <td align="center"><font color="#333366" size="+1" face="Georgia, Times New Roman, Times, serif"><strong>Warrenty 
                      Days:</strong></font></td>
                    <td align="center"><input type="text" name="wdays" disabled value="<%=wdays%>" id="b"></td>
                  </tr>
                  <tr> 
                    <td align="center"><font color="#333366" size="+1" face="Georgia, Times New Roman, Times, serif"><strong>Product 
                      Rate:</strong></font></td>
                    <td align="center"><input type="text" name="prorate" disabled id="b" value="<%=prate%>"></td>
                  </tr>
                  <tr> 
                    <td align="center"><font color="#333366" size="+1" face="Georgia, Times New Roman, Times, serif"><strong>Offer 
                      Rate:</strong></font></td>
                    <td align="center"><input type="text" name="offrate" id="b"></td>
                  </tr>
                  <tr> 
                    <td align="center"><font color="#333366" size="+1" face="Georgia, Times New Roman, Times, serif"><strong>Offer 
                      Description:</strong></font></td>
                    <td align="center"><textarea name="des" id="b" cols="15"></textarea></td>
                  </tr>
                  <tr> 
                    <td><input type="reset" name="re" value="clear" class="btn"></td>
                    <td><input type="submit" name="sub" value="submit" class="btn"></td>
                  </tr>
                </table>
              </form>
			     <%
	   
	 	   }
	   catch(Exception e1)
	   {
	     out.println(e1.getMessage());
	   }
 %>
              </fieldset></td>
            <td width="200" bgcolor="#FBF7E1" align="center"><strong><em><font color="#FF0000" size="+1" face="Courier New">Product 
              Image:</font></em></strong><br> <br> <img src="image.jsp?product_name=<%=pid%>" height="212" width="165"></td>
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
