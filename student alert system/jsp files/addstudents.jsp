<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
<head profile="http://gmpg.org/xfn/11">
<title>STUDENT ALERT SYSTEM</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="imagetoolbar" content="no" />
<link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
<%!String r1=null,r2=null,r3=null,r4=null,r5=null,r6=null,r7=null,r8=null;%>
<%

/*String username1=session.getAttribute("username").toString(); 
Class.forName("com.mysql.jdbc.Driver").newInstance();
 Connection con=null; 
 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_alert_database","root","root123"); 
Statement st=con.createStatement();
ResultSet rs1=st.executeQuery("select * from ACCOUNT_SETTINGS where USN_A='"+username1+"'");

while(rs1.next()){
r1=rs1.getString(3);
r2=rs1.getString(4);
r3=rs1.getString(5);
r4=rs1.getString(6);
r5 =rs1.getString(7);
r6=rs1.getString(8);
r7=rs1.getString(9);
r8=rs1.getString(10);

}
System.out.print(r1);
session.setAttribute("username", username1);*/

%>


<script>

function loaddata(){
	
document.getElementById('ex').checked=true;

document.getElementById('re').checked=true;

document.getElementById('fe').checked=true;

document.getElementById('tt').checked=true;

document.getElementById('sy').checked=true;

document.getElementById('ev').checked=true;

document.getElementById('mail').checked=true;

document.getElementById('mob').checked=true;
}

function validateform()
{
var y=document.forms["myForm"]["idmail"].value;
var atpos=y.indexOf("@");
var dotpos=y.lastIndexOf(".");
if(atpos<1 || dotpos<atpos+2 || dotpos+2>=y.length)
{
alert("Not a valid email address");
return false;
}
var p=document.forms["myForm"]["idphno"].value;
for(j=0,fl=0;j<=p.length;j++)
{
if(!(p.charAt(j)>=0&& p.charAt(j)<=11))
fl++; }
if(fl!==0)
{
alert("Only numbers allowed in phone no");
return false;
}
if(p.length!==12)
{
alert("Not a valid phone no.");
return false;
}
}

function mouseoverPass(obj) {
  var obj = document.getElementById('Password');
  obj.type = "text";
}

</script>

</head>

<body id="top" onload="loaddata();">

<div class="wrapper row1">
<div id="header" class="clear">
<div class="fl_left">
<h1><a href="#">SIDDAGANGA INSTITUTE OF TECHNOLOGY</a></h1>
</div>
</div>
</div>
<!--
###############################################################################
######################## -->
<div class="wrapper row2">
<div id="topnav">
<ul>
<li><a href="index.jsp">Homepage</a></li>
      <li><a href="about.jsp">About this project</a></li>
	  <li><a href="admin_login.jsp">Logout</a></li>
</ul>
<div class="clear"></div>
</div>
</div>
<!--
###############################################################################
######################## -->
<div class="wrapper row4">
<div id="container" class="clear">
<!--
###############################################################################
######################## -->
<div id="content">


<%
/*
 String username=session.getAttribute("username").toString(); 
Class.forName("com.mysql.jdbc.Driver").newInstance();
 Connection con1=null; 
 con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_alert_database","root","root123"); 
 Statement st1= con1.createStatement(); 
ResultSet rs=st1.executeQuery("select * from STUDENT_DETAILS where USN_D='"+username+"'"); 
ResultSet rs2=st1.executeQuery("select * from LOGIN  where USN='"+username+"'");

String name=null;
String email=null;
String sem=null;
String branch=null;
String ph=null;
String pass=null;
while(rs.next())
{
name=rs.getString(1);
branch=rs.getString(3);
sem=rs.getString(4);
email=rs.getString(5);
ph=rs.getString(6);
}

while(rs2.next())
{
pass=rs2.getString(2);
}*/

%>


<h1><b><center>ADD STUDENTS</center></b> </h1>
<br />

<h2>SET LOGIN AND PASSWORD</h2>

<form name="myForm" action="addstudentstodb.jsp" onSubmit="return validateform();" method="post">
<table>
<tr> <td>USN</td><td><input type="text" name="usn" size="25"id="idlogin" value=""
/></td></tr>
<tr> <td>PASSWORD</td><td><input type="text" name="password"  size="25" id="idpass" value=""
/></td></tr>
</table>

<h2>STUDENT DETAILS</h2>
<table>
<tr> <td>NAME</td><td><input type="text" name="name" size="25" id="idname" value=""
/></td></tr>
<tr> <td>BRANCH</td><td><input type="text" name="branch"  size="25"id="idbranch" value=""
/></td></tr>
<tr> <td>SEMESTER</td><td> <select name="sem">
<option>S1</option>
<option>S2</option>
<option>S3</option>
<option>S4</option>
<option>S5</option>
<option>S6</option>
<option>S7</option>
<option>S8</option>
</select></td></tr>
<tr> <td>EMAIL ID</td><td><input type="text" name="mailid" size="25" id="idmail" value=""
/></td></tr>
<tr> <td>PHONE NO.</td><td><input type="text" name="phno" id="idphno" size="25" value=""
/></td></tr>
</table>
</br>
<h3>ACCOUNT SETTINGS</h3>
<table border="1">
<thead>
<tr>
</tr>

<tr>
<th>NOTIFICATION</th>
<th> YES </th>
<th> NO </th>
</thead>
<tbody>
<!--<form method="post" action="addstudentstodb.jsp" name="formy">-->
<tr>
<td>EXAM RESULTS</td>
<td><input type="radio" name="g1" value="y" id="ex"/></td>
<td><input type="radio" name="g1" value="n" id ="ex1"/></td>
</tr>
</form>
<tr>
<td>EXAM SEAT NUMBER</td>
<td><input type="radio" name="g2" value="y" id="re"/></td>
<td><input type="radio" name="g2" value="n" id="re1"/></td>
</tr>
<tr>
<td>FEE DETAILS</td>
<td><input type="radio" name="g3" value="y" id="fe" /></td>
<td><input type="radio" name="g3" value="n" id="fe1"/></td>
</tr>
<tr>
<td>EXAM TIME TABLE</td>
<td><input type="radio" name="g4" value="y" id="tt" /></td>
<td><input type="radio" name="g4" value="n" id="tt1"/></td>
</tr>
<tr>
<td>SYLLABUS</td>
<td><input type="radio" name="g5" value="y" id="sy" /></td>
<td><input type="radio" name="g5" value="n" id="sy1"/></td>
</tr>
<tr>
<td>EVENTS NOTIFICATION</td>
<td><input type="radio" name="g6" value="y" id="ev"/></td>
<td><input type="radio" name="g6" value="n" id="ev1"/></td>

</tr>
<tr>
<td>E-MAIL NOTIFICATION</td>
<td><input type="radio" name="g7" value="y" id="mail"/></td>
<td><input type="radio" name="g7" value="n" id="mail1"/></td>
</tr>
<tr>
<td>SMS NOTIFICATION</td>
<td><input type="radio" name="g8" value="y" id="mob"/></td>
<td><input type="radio" name="g8" value="n" id="mob1"/></td>
</tr>
</tbody>
</table>
<tr><td></td><td><input type="submit" value="SAVE"  /></td></tr>
</form>
<div id="comments">
</br>
</br>
</div><div id="respond">
</div>
</div>
<div id="column">
<div class="subnav">
<h2>App Navigation</h2>
<ul>
<li><a href="admin_interface.jsp">Go back to admin interface</a></li>

</ul>

</div>

<div id="featured">
</div>
</div>
<div class="clear"></div>
</div>
</div>
<!--
###############################################################################
######################## -->
<div class="wrapper row5">
<div id="footer" class="clear">
<div class="foot_contact">
<h2>SIDDAGANGA INSTITUTE OF TECHNOLOGY</h2>
<address>
DIVISION OF COMPUTER SCIENCE</br>
BH ROAD<br />
TUMKUR<br />
572 103
</address>
</div>
<div class="footbox">
</div>

<!--
###############################################################################
######################## -->
<div class="footbox">
</div>
<div>
</div>
</div>
</div>
<!--
###############################################################################
######################## -->
<div class="wrapper">
<div id="copyright" class="clear">
<p class="fl_left">Copyright &copy; 2017 - All Rights Reserved - </p>
</div>
</div>

</body>
</html>
