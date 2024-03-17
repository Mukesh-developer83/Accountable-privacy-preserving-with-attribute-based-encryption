<%@page import="Action.Dbcon"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!--
Design by http://www.bluewebtemplates.com
Released for free under a Creative Commons Attribution 3.0 License
-->
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Oruta</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <link href="style.css" rel="stylesheet" type="text/css" />
        <!-- CuFon: Enables smooth pretty custom font rendering. 100% SEO friendly. To disable, remove this section -->
        <script type="text/javascript" src="js/cufon-yui.js"></script>
        <script type="text/javascript" src="js/arial.js"></script>
        <script type="text/javascript" src="js/cuf_run.js"></script>
        <!-- CuFon ends -->
        <script language="JavaScript">
	function one()
	{
let password = document.getElementById('pass');
return StrengthChecker(password.value);
	}
function StrengthChecker(PasswordParameter) {
let timeout;
let password = document.getElementById('pass');
let strengthBadge = document.getElementById('StrengthDisp');
let strongPassword = new RegExp('(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[^A-Za-z0-9])(?=.{8,})')
let mediumPassword = new RegExp('((?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[^A-Za-z0-9])(?=.{6,}))|((?=.*[a-z])(?=.*[A-Z])(?=.*[^A-Za-z0-9])(?=.{8,}))')
    if(strongPassword.test(PasswordParameter)) {
        strengthBadge.style.backgroundColor = "green";
        strengthBadge.textContent = 'Strong';
	return true;
    } else if(mediumPassword.test(PasswordParameter)) {
        strengthBadge.style.backgroundColor = 'blue';
        strengthBadge.textContent = 'Medium';
	return false;
    } else {
        strengthBadge.style.backgroundColor = 'red';
        strengthBadge.textContent = 'Weak1';
	return false;
    }
}

       </script> 
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
                        <ul
                            class="">
                            <li><a href="Home.jsp"><strong>Home</strong></a></li>
                            <li class="active"><a href=""><strong>User_Register</strong></a></li>
                            <li><a href="Mem_Log.jsp"><strong>User_Login</strong> </a></li>
                        </ul>
                    </div>
<!--                    <div class="clr"></div>-->
                </div>
            </div>
            <div class="content">
                <div class="content_resize">
                    <div align="center">
                        <%
                            if (request.getParameter("msg") != null) {
                                out.println("<h3>Registered Successfully..!</h3>");
                            }
                        %>
                        <center>
                       <h2 style="color: tomato">User  Registration</h2>
                        <fieldset style="background-color:#c0c0c0 ;width: 400px;">
                       <table>
                          <form id="newsletter" name="f" action="regi" method="get" onSubmit="return one()">
                                
                                <p><strong>Username:</strong> &nbsp;&nbsp;<input type="text"name="user" id="name"style="font-family: fantasy;width: 180px;height: 25px "/></p>
                                <p><strong>Password:</strong>  &nbsp;&nbsp;<input type="password" name="pass" id="pass" style="font-family: fantasy;width: 180px;height: 25px" onBlur="return validate()"/><span id="StrengthDisp" class="badge displayBadge">Weak</span></p>
                                <p style="font-family:fantasy; ">  Group : 
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <select id="keys" name="group" style="width: 180px; height: 25px;" onchange="loadXMLDoc()"> 
                                        <option value="-1">-Select-</option>
                                        <%
                                            String sql1 = "SELECT * FROM `group` ";
                                            PreparedStatement pst1 = null;
                                            Connection conn1 = null;
                                            try {
                                                conn1 = Dbcon.getCon();
                                                pst1 = conn1.prepareStatement(sql1);
                                                ResultSet rs1 = pst1.executeQuery();
                                                while (rs1.next()) {%>
                                        <option value="<%=rs1.getString("group_name")%>"><%=rs1.getString("group_name")%></option>
                                        <%}
                                            } catch (Exception e) {
                                            }%>
                                    </select>
                                </p>
                                <p> <strong>&nbsp;&nbsp;&nbsp;&nbsp;E_mail :</strong> &nbsp;&nbsp;&nbsp;<input type="text"name="mail"id="mail"style="font-family: fantasy;width: 180px;height: 25px"/></p>
                                <p><strong>Contact No:</strong> <input type="text"name="contact" id="contact"style="font-family: fantasy;width: 180px;height: 25px"/></p>  
                                <p><strong>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Place:</strong> <input type="text"name="place" id="contact"style="font-family: fantasy;width: 180px;height: 25px"/></p>  
                                <tr><td><br>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" name="registration" value="Register" style="font-family: fantasy;width: 100px;height: 25px;" />
                                            <input type="reset"name="cancel"style="font-family: fantasy;width: 100px;height: 25px;"/></br>
                                        </form>  
                                        </table>
                        </fieldset>
                        </center>
                                        </div>
                                        <div class="sidebar">
                                        </div>
                                        <div class="clr"></div>
                                        </div>
                                        </div>          
                                        <div class="footer">
                                            <div class="footer_resize">
                                             
                                                <div class="clr"></div>
                                            </div>
                                        </div>
                                        </div>
                                        </body>
                                        </html>
