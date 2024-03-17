<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!--
Design by http://www.bluewebtemplates.com
Released for free under a Creative Commons Attribution 3.0 License
-->
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>oruta</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <link href="style.css" rel="stylesheet" type="text/css" />
        <!-- CuFon: Enables smooth pretty custom font rendering. 100% SEO friendly. To disable, remove this section -->
        <script type="text/javascript" src="js/cufon-yui.js"></script>
        <script type="text/javascript" src="js/arial.js"></script>
        <script type="text/javascript" src="js/cuf_run.js"></script>
        <!-- CuFon ends -->
    </head>
    <body>
        <div class="main">
            <div class="header">
                <div class="header_resize">
                    <div class="logo"><br></br>
                        <br></br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <img src="images/41.png" />
                    </div>
                    <div class="menu_nav">
                        <ul>
                            <li class="active"><a href="Home.jsp"><strong>Logout</strong></a></li>

                        </ul>
                    </div>
                    <div class="clr"></div>
                </div>
            </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
        <h3>
<%@page import='java.io.*,java.sql.*'%>
<%
String opt="disease_data";

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:4306/dpfcb","root","root");



%>
<form name="f" action="predictionres.jsp" method=get>
<table id="table-design" bgcolor="#FFFFFF" width="300" border="0" >

<thead>
 <th>Predition</th>
 </thead>
</table>
<table id="table-design" bgcolor="#FFFFFF" width="300" border="0" >
<tbody> 

<tr>
<td>Age</td><td><input type="text" name="Age" size=2 value=52></td>
<td>Sex</td><td><input type="text" name="Sex" size=2 value=1></td>
<td>Cp</td><td><input type="text" name="Cp" size=2 value=0></td>
<td>Trestbps</td><td><input type="text" name="Trestbps" size=2 value=125></td>
<td>Chol</td><td><input type="text" name="Chol" size=2 value=212></td>
</tr>

<tr>
<td>Fbs</td><td><input type="text" name="Fbs" size=2 value=0></td>
<td>Restecg</td><td><input type="text" name="Restecg" size=2 value=1></td>
<td>Thalach</td><td><input type="text" name="Thalach" size=2 value=168></td>
<td>Exang</td><td><input type="text" name="Exang" size=2 value=0></td>
<td>Oldpeak</td><td><input type="text" name="Oldpeak" size=2 value=1></td>
</tr>
<tr>
<td>slope</td><td><input type="text" name="Slope" size=2 value=2></td>
<td>Ca</td><td><input type="text" name="Ca" size=2 value=2></td>
 <td>Thal</td><td><input type="text" name="Thal" size=2 value=3></td>
<td>Target</td><td><input type="text" name="Target" size=2 value=0></td>
</tr>
<tr>
<td></td><td></td>
<td></td><td></td>
<td></td><td></td>
</tr>

<tr>
<td></td><td><input type="submit" name="b1" value="Predict Disease"></td>
<td></td><td><input type="reset" name="b2" value="Clear"></td><td></td><td></td></td></tr></tbody></table></form>
</h3>


        
      </div>
      </div> </div>
      </div>
 
        
       
</body>
</html>

