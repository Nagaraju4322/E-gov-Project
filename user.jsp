<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {font-size: 36px}
.style2 {
	font-weight: bold;
	font-style: italic;
	color: #000000;
}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html" class="style1">Semi Supervised Spam Detection in Twitter Stream</a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="A_Login.jsp"><span>Admin</span></a></li>
          <li class="active"><a href="U_Login.jsp"><span>User</span></a></li>
          <li></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="320" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="960" height="320" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="960" height="320" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2>&nbsp;</h2>
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
          <ul class="sb_menu style2">
            <li><a href="U_Main.jsp">User Home</a></li>
            <li><a href="U_Login.jsp">LogOut</a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"><a href='http://all-free-download.com/free-website-templates/'></a></div>
    </div>
  </div>
</div>
</body>
</html>
<%<%

							String query8="select * from advrequest "; 
						   	Statement st8=connection.createStatement();
						   	ResultSet rs8=st8.executeQuery(query8);
					   		while ( rs8.next() )
					   		{	
								
								String uname=rs8.getString(2);
	   							String date11=rs8.getString(3);
								String date21=rs8.getString(4);
								
								String query81="select * from advertisement where username='"+uname+"' "; 
						   	    Statement st81=connection.createStatement();
						   		ResultSet rs81=st81.executeQuery(query81);
					   			while ( rs81.next() )
					   			{
									int id=rs81.getInt(1);
									String s0=rs81.getString(12);
									String s1=rs81.getString(2);
									String s2=rs81.getString(3);
									String s3=rs81.getString(4); 
									
			SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");

			Date date1 = new SimpleDateFormat("dd/MM/yyyy").parse(date21);
			Date now1 = new Date();
			SimpleDateFormat sdf1 = new SimpleDateFormat("dd/MM/yyyy");
			String strCurrDate = sdf1.format(now1);
			Date date2 = new SimpleDateFormat("dd/MM/yyyy").parse(strCurrDate);

			if (date1.compareTo(date2) < 0)
   								{
					PreparedStatement ps=connection.prepareStatement("insert into expired(uname,acat,aname,company,expdate) values(?,?,?,?,?)");
						ps.setString(1,s0);
						ps.setString(2,s1);
						ps.setString(3,s2);	
						ps.setString(4,s3);
						ps.setString(5,date21);
						
						ps.executeUpdate();
								
   					PreparedStatement ps1=connection.prepareStatement("delete  from advrequest where uname='"+uname+"' ");
						
										ps1.executeUpdate();
										
					PreparedStatement ps2=connection.prepareStatement("delete  from advertisement where username='"+uname+"'  ");
						
										ps2.executeUpdate();
										
					PreparedStatement ps3=connection.prepareStatement("delete  from recommendtofriend where aid='"+id+"'  ");
						
										ps3.executeUpdate();
									}
   						}
			
			}

%>%>