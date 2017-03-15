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
var x = document.f.comname.value;
var a = document.f.proname.value;
var b = document.f.wardate.value;
var c = document.f.proimage.value;
var d = document.f.prorate.value;

if(x=="")
{
alert("enter Company Name");
document.f.comname.focus();
return false;
}

if(a=="")
{
alert("enter Product Name");
document.f.proname.focus();
return false;
}
if(b=="")
{
alert("enter Warrenty days");
document.f.wardate.focus();
return false;
}
if(isNaN(b))
{
alert("enter valid Warrenty days");
document.f.wardate.focus();
return false;
}
if(c=="")
{
alert("browse Product image");
document.f.proimage.focus();
return false;
}
if(d=="")
{
alert("enter Product Rate");
document.f.prorate.focus();
return false;
}
if(isNaN(d))
{
alert("enter Product Rate in Digits");
document.f.prorate.focus();
return false;
}
}
</script>
<link href="style.css" rel="stylesheet" media="all" type="text/css" />
</head>

<body>
<%
String sname=(String)session.getAttribute("sname");
String scname=(String)session.getAttribute("scname");

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
            <td width="410" bgcolor="#FBF7E1"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <font color="#FF0000" size="+1" face="Georgia, Times New Roman, Times, serif"><strong>All 
              Products</strong></font> <br> <br> <br> <form>
                <table bgcolor="#FFFFFF" cellpadding="5" cellspacing="5" width="725" border="0">
                  <tr  bgcolor="#33CCFF"> 
                  <tr bgcolor="#E4E4F1"> 
                    <td align="center"><font color="#110022"><strong>Product Id</strong></font></td>
                    <td align="center"> <font color="#110022"><strong>Company 
                      Name</strong></font></td>
                    <td align="center"><font color="#110022"><strong>Product Name</strong></font></td>
                    <td align="center"> <font color="#110022"><strong>Warrenty 
                      Days</strong></font></td>
                    <td align="center"><font color="#110022"><strong>Product Rate 
                      </strong></font></td>
                    <td align="center"><font color="#110022"><strong>Offers</strong></font></td>
                  </tr>
                  <%
			
			
			
			String pid=null,cname=null,pname=null,wdays=null,prate=null;
ResultSet rs=null;
String sta="Registered";
try
{
	Connection con = databasecon.getconnection();
	Statement st = con.createStatement();	

    String qry="select * from products where comname='"+scname+"' && status='"+sta+"'";
		rs =st.executeQuery(qry);
	while(rs.next())
	{
	pid=rs.getString("pid");
	cname=rs.getString("comname");
	
	pname=rs.getString("proname");
	wdays=rs.getString("wardate");
	prate=rs.getString("prorate");
	
	
	 
%>
                  <tr bgcolor="#FFFFCC"> 
                    <td align="center"> <strong><font color="#6300C6"> <%=pid%> 
                      </font></strong></td>
                    <td align="center"><strong><font color="#6300C6"> <%=cname%> 
                      </font></strong></td>
                    <td align="center"><strong><font color="#6300C6"> <%=pname%> 
                      </font></strong></td>
                    <td align="center"><strong><font color="#FF3300"> <%=wdays%> 
                      </font></strong></td>
                    <td align="center"><strong><font color="#6300C6"> <%=prate%> 
                      </font></strong></td>
                    <td align="center"><a href="re_offers1.jsp?<%=pid%>"><strong><font color="#CC0000" class="big">Offers</font></strong></a></td>
                  </tr>
                  <%
	   }
	 	   }
	   catch(Exception e1)
	   {
	     out.println(e1.getMessage());
	   }
 %>
                </table>
              </form></td>
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
