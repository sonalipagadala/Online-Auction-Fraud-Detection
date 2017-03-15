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
if(document.f.op[0].checked==false&&document.f.op[1].checked==false&&document.f.op[2].checked==false&&document.f.op[3].checked==false)
{
alert("select Complaint");
return false;
}
var a=document.f.com1.value;
if(a=="")
{
alert("enter Complaint");
document.f.com1.focus();
return false;
}
}


</script>

<link href="style.css" rel="stylesheet" media="all" type="text/css" />
</head>

<body>
<%
String name=(String)session.getAttribute("name");
String pid1=request.getQueryString();
session.setAttribute("pid1",pid1);
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
        <li><a href="user_home.jsp" >Home</a></li>
        <li><a href="my_products.jsp" class="active">My Products</a></li>
        <li><a href="index.html">Logout</a></li>
        <!-- <li><a href="#">Admin</a></li>
        <li><a href="#">Link</a></li>
        <li><a href="#">Link</a></li>
        <li><a href="#">Link</a></li>-->
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;<font color="#333366" face="Georgia, Times New Roman, Times, serif" size="+1"><strong>welcome:</strong></font> 
        &nbsp;<font color="#FF0000" face="Georgia, Times New Roman, Times, serif" size="+1"><strong><%=name%></strong></font> 
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
            <td width="300" bgcolor="#FBF7E1" valign="top"> <form name="f" action="user_com_insert.jsp" method="post" onsubmit="return valid()">
                <fieldset>
                <legend><font color="#FF0000" size="+2" face="Courier New"><strong><em>Complaint</em></strong></font></legend>
                <table width="271" cellpadding="10" cellspacing="5">
                  <tr> 
                    <td colspan="2" align="center"><font size="2"><b> 
                      <%
                                                       String message=request.getParameter("message");
                                                       if(message!=null && message.equalsIgnoreCase("success"))
                                                       {
                                                               out.println("<font color='red'><blink>Complaint Registered !</blink></font>");
                                                       }
                                               %>
                      </b></font></td>
                  </tr>
                  <tr> 
                    <td><strong><font color="#CC0000" size="+1" face="Georgia, Times New Roman, Times, serif">complaint 
                      about</font></strong></td>
                    <td> <input type="radio" name="op" value="deliver" > <strong><font color="#330000">Not 
                      Delivered</font></strong><br> <br> <input type="radio" name="op" value="missmatch"> 
                      <strong><font color="#330000">Product Missmatch</font></strong><br> 
                      <br> <input type="radio" name="op" value="service"> <strong><font color="#330000">Poor 
                      Service</font></strong><br> <br> <input type="radio" name="op" value="damage"> 
                      <strong><font color="#330000">Product Damaged</font></strong><br> 
                      <br> </td>
                  </tr>
                  <tr> 
                    <td><strong><font color="#CC0000" size="+1" face="Georgia, Times New Roman, Times, serif">Enter 
                      Complaint </font></strong></td>
                    <td><textarea name="com1" cols="12"></textarea></td>
                  </tr>
                  <tr> 
                    <td><input type="reset" name="r" value="clear" class="btn"></td>
                    <td><input type="submit" name="s" value="submit" class="btn"></td>
                  </tr>
                </table>
                </fieldset>
              </form></td>
            <td width="100" bgcolor="#FBF7E1" align="center"><img src="images/comp.png" height="150" width="150"> </td>
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
