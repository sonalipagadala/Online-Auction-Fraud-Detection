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
        <li><a href="#" class="active">Products</a></li>
        <li><a href="re_offers.jsp">Offers</a></li>
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
              <legend><strong><em><font color="#FF0000" size="+2" face="Courier New">New Products</font></em></strong></legend>
              <form name="f" action="re_pro_insert.jsp" method="post" onsubmit="return valid()">
                <table cellpadding="10" cellspacing="10">
                  <tr> 
                    <td colspan="2" align="center"><font size="2"><b> 
                      <%
                                                       String message=request.getParameter("message");
                                                       if(message!=null && message.equalsIgnoreCase("success"))
                                                       {
                                                               out.println("<fieldset><font color='red'><blink>Product Successfully Registered !</blink></font></fieldset>");
                                                       }
                                               %>
                      </b></font></td>
                  </tr>
                  <tr> 
                    <td width="161" align="center"><font color="#333366" size="+1" face="Georgia, Times New Roman, Times, serif"><strong>Company 
                      Name:</strong></font></td>
                    <td width="162" align="center"><input type="text" name="comname" value="<%=scname%>" id="b"></td>
                  </tr>
                  <tr> 
                    <td align="center"><font color="#333366" size="+1" face="Georgia, Times New Roman, Times, serif"><strong>Product 
                      Name:</strong></font></td>
                    <td align="center"><input type="text" name="proname" id="b"></td>
                  </tr>
                  <tr> 
                    <td align="center"><font color="#333366" size="+1" face="Georgia, Times New Roman, Times, serif"><strong>Warrenty 
                      Days:</strong></font></td>
                    <td align="center"><input type="text" name="wardate" id="b"></td>
                  </tr>
                  <tr> 
                    <td align="center"><font color="#333366" size="+1" face="Georgia, Times New Roman, Times, serif"><strong>Product 
                      Image:</strong></font></td>
                    <td align="center"><input type="file" name="proimage" size="8" id="b"></td>
                  </tr>
                  <tr> 
                    <td align="center"><font color="#333366" size="+1" face="Georgia, Times New Roman, Times, serif"><strong>Product 
                      Rate:</strong></font></td>
                    <td align="center"><input type="text" name="prorate" id="b"></td>
                  </tr>
                  <tr> 
                    <td><input type="reset" name="re" value="clear" class="btn"></td>
                    <td><input type="submit" name="sub" value="submit" class="btn"></td>
                  </tr>
                </table>
              </form>
              </fieldset></td>
            <td width="200" bgcolor="#FBF7E1" align="center"><img src="product/tv.png" width="100" height="100">
			<br><br><br><img src="product/fridge.png" width="100" height="200"></td>
            
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
