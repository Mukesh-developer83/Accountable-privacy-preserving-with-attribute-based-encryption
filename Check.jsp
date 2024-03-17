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
                            <li><a href="Home.jsp"><strong>Logout</strong></a></li>
<!--                            <li class="active"><a href="PublicAudting.jsp"><strong>Auditor</strong></a></li>-->
                         
                        </ul>
                    </div>
                    <div class="clr"></div>
                </div>
            </div>
            <div class="content">
                <div class="content_resize">
                    <div align="center">
                        <fieldset style="background-color: #ccffff;width: 400px;">
                        <table>
                            <form id="newsletter" name="f" action="Check_Action.jsp" method="get" onsubmit="return check()">
                              
                                <h2>To Verify the Integrity Of Data</h2><br>
                                <p><strong>  &nbsp;&nbsp;UserName:</strong> <input type="text"name="name" id="contact"style="font-family: fantasy;width: 180px;height: 25px"/></p>  
                                <p style="font-family:fantasy; "> <strong> Group : </strong> 
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<select id="keys" name="group" style="width: 180px; height: 25px;" onchange="loadXMLDoc()"> 
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
                                <p> <strong>FileName:</strong> &nbsp;&nbsp;&nbsp;<input type="text"name="fname"id="mail"style="font-family: fantasy;width: 180px;height: 25px"/></p>
                                <p><strong> &nbsp;File Key:&nbsp;&nbsp;&nbsp;</strong> <input type="text"name="filek" id="contact"style="font-family: fantasy;width: 180px;height: 25px"/></p>  

                                <tr><td><br>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" name="registration" value="Verify" style="font-family: fantasy;width: 100px;height: 25px;background-color: #009933" />
                                            <input type="reset"name="cancel"style="font-family: fantasy;width: 100px;height: 25px;background-color: tomato"/></br>
                                        </form>  
                                        </table>
                        </fieldset>
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
