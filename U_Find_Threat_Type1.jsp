<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Find Threat Type</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-times.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style6 {font-size: 35px}
.style31 {font-size: 30px}
.style63 {color: #9900FF;
	font-weight: bold;
	font-size: 12px;
}
.style2 {
	font-size: 24px;
	color: #FFFF00;
}
.style3 {font-size: 24px}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1 class="style6"><a href="#">A Secure and Privacy-Preserving E-Government Framework Using Blockchain and Artificial Immunity
</a></h1>
      </div>
      <div class="menu_nav">
        <ul>
		  <li><a href="#"></a></li>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li class="active"><a href="UserLogin.jsp"><span>User </span></a></li>
          <li><a href="ServerLogin.jsp"><span>Admin</span></a></li>
		  <li><a href="#"></a></li>
	    </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" /></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
       
          <div>
            <div>
              <h2 align="center"><br />
              </h2>
		
	          <table width="423" height="121" border="3" align="center"  cellpadding="0" cellspacing="0"  ">
					<tr bgcolor="#99FF33">
					<td  width="415" height="65" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center"><span class="style2"><br />
					  Found Threat Type</span></div></td>
					
					</tr>
					 <%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
 <%@ page import ="java.security.Key" %>
 
 <%@ page import ="javax.crypto.Cipher" %> 
 
 <%@ page import ="java.math.BigInteger" %>
 
 <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
 
 <%@ page import ="org.bouncycastle.util.encoders.Base64" %>
 
 <%@ page import ="java.security.MessageDigest,java.security.DigestInputStream" %>
 
 <%@ page import ="java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.io.BufferedInputStream" %>
 
					<%
String s1,s2,s13="",s4,s5,s6,s7,s8,s9;
int i=0,count=0;
try 
{

String urlid=request.getParameter("urlid");	
String URL=request.getParameter("URL");		 
String Source_IP=request.getParameter("Source_IP"); 
String Source_Port=request.getParameter("Source_Port");	 
String Destination_IP=request.getParameter("Destination_IP");	 
String Destination_Port=request.getParameter("Destination_Port");
 
	String query="select * from datasets where urlid='"+urlid+"' and Source_IP='"+Source_IP+"' and Destination_IP='"+Destination_IP+"' "; 
	Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	{
	
		s13=rs.getString(9);
		

		%>
					
							<tr bgcolor="#00FFFF">
						
							  <td  width="415" height="50" valign="baseline" nowrap="nowrap" bgcolor="#FFFFFF" style="color:#000000;">
							   
							      <div align="center" class="style3">
							        <br />
							        <%out.println(s13);%>
				              </div></td>	
								
					</tr>
					<%
						
					}
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
</table>
			 
			 
<p align="center"><a href="U_Main.jsp" class="style4">Back</a></p>
      </div>
          </div>
          <div class="clr"></div>
          <div align="center"><a href="U_Main.jsp" class="style63">Back</a></div>
        </div>
        <div class="article">
          <h2 class="style31">&nbsp;</h2>
        </div>
      </div>
      <div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="#">
            <span>
            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
            </span>
            <input name="button_search" src="images/search.gif" class="button_search" type="image" />
          </form>
        </div>
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li>
              <p><a href="U_MyPosts.jsp">Home</a></p>
              <p><a href="index.html">Log Out </a></p>
            </li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
   