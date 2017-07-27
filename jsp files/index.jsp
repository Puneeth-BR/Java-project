<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><style>a:link {color: #FFFFFF}</style>
<title>MSRIT Student Notification Portal</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
<script type="text/javascript" src="layout/scripts/jquery.min.js"></script>
<!-- liteAccordion is Homepage Only -->
<link rel="stylesheet" href="layout/scripts/liteaccordion-v2.2/css/liteaccordion.css" type="text/css" />
</head>
<body id="top" link="white">

<div class="wrapper row1">
  <div id="header" class="clear">
    <div class="fl_left">
      <h1><a href="index.jsp">M S Ramaiah Institute of Technology</a></h1>
    </div>
    <form action="LoginCheck.jsp" method="post" id="login">
      <fieldset>
        <legend>Student Login</legend>
		<p>  &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; USN:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Password:</p></br>
        <input type="password" name="password" id="password" />
        <input type="text" name="username" id="username" />
        <div id="forgot"><a href="forgotpassword.html">&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;Forgot Your Details?</a></div>
        <input type="submit" id="signin" alt="Sign In" value="LogIn" onClick="return validate(username,password);"/>
      </fieldset>
    </form>
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper row2">
  <div id="topnav">
    <ul>
      <li class="active"><a href="index.jsp">Homepage</a></li>
      <li><a href="about.jsp">About this project</a></li>
	  <li><a href="registration.jsp">REGISTER</a></li>
	  <li class="last"><a href="admin_login.jsp">Admin</a></li>
    </ul>
    <div  class="clear"></div>
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper row3">
  <div id="featured_slide"> 
    <!-- ####################################################################################################### -->
    <ol>
      <li>
        <h2><span>Campus</span></h2>
        <div><img src="images/demo/featured-slide/images_1501081361002.jpg" alt="" /></div>
      </li>
      <li>
        <h2><span>Founder &nbspPresident</span></h2>
        <div><img src="images/demo/featured-slide/GOLDEN_JUBILEE_CELEBRATION.jpg" alt="" /></div>
      </li>
      <li>
        <h2><span>Golden Jubilee</span></h2>
        <div><img src="images/demo/featured-slide/GOLDEN_JUBILEE_CELEBRATION_1.png" alt="" /></div>
      </li>
      <li>
        <h2><span>Fest</span></h2>
        <div><img src="images/demo/featured-slide/UDBHAV_-_COLLEGE_FEST.jpg" alt="" /></div>
      </li>
      <li>
        <h2><span>Sports day</span></h2>
        <div><img src="images/demo/featured-slide/SPORTS_DAT_2.png" alt="" /></div>
      </li>
    </ol>
    <!-- ####################################################################################################### --> 
  </div>
</div>
<!-- ####################################################################################################### -->

       
      
      
       
   <!--###################################################################################################### -->
<div class="wrapper row5">
  <div id="footer" class="clear"> 
    <!-- ####################################################################################################### -->
    <div class="foot_contact">
      <h2>M S Ramaiah Institute of Technology</h2>
      <address>
      M S Ramaiah Institute of Technology,<br />
      Mathikere,<br />
      Bengaluru,<br />
      560054
      </address>
	  </div>
	  </br></br>
        <p><strong>Tel:</strong> 8023600822</p>
        <p class="last"><strong>Email:</strong>principal@msrit.edu</p>
		<p><strong>Visit:</strong><a href="http://msrit.edu"><u>www.msrit.edu</u></a></p>
    </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper">
  <div id="copyright" class="clear">
    <p class="fl_left">Copyright &copy; 2017 - All Rights Reserved - <a href="#">Student alert system</a></p>
 
  </div>
</div>
<!-- liteAccordion is Homepage Only --> 
<script type="text/javascript" src="layout/scripts/liteaccordion-v2.2/js/liteaccordion.jquery.min.js"></script> 
<script type="text/javascript">

$("#featured_slide").liteAccordion({
    theme: "os-tpl",
    containerWidth: 960, // fixed (px)
    containerHeight: 360, // fixed (px) - overall height of the slider
    headerWidth: 48, // fixed (px) - slide spine title
    firstSlide: 1, // displays slide (n) on page load
	activateOn: "click", // click or mouseover
    autoPlay: true, // automatically cycle through slides
    pauseOnHover: true, // pause slides on hover
    rounded: false, // square or rounded corners
    enumerateSlides: true, // put numbers on slides
    slideSpeed: 800, // slide animation speed
    cycleSpeed: 3000, // time between slide cycles
});
function validate(username,password)
      {
			var error="";
          var pattern=/^[1-4][A-Z]{2}[0-9]{2}[A-Z]{2}[0-9]{3}$/;

          
			 if(username.value.length==0 && password.value.length==0 )
			 {
				 alert("Please enter your usn and password");
				 return false;
			 }
			  
			 if (username.value.length==0)
             {
                alert("Please enter the USN!");
				return false;
             }
			 
			 if (password.value.length==0)
             {
                alert("Please enter the password!");
				return false;
             }
			 if(!username.value.match(pattern))
			 {
				 alert("Please enter a valid USN!!!");
				 return false;
			 }
			 
			 
      }
</script>
</body>
</html>