<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Action.Dbcon"%>
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
         <style>
            table{
                width: 850px;
                
            }
            table,tr,td{
                border-style: solid;
                border-color: #c0c0c0;
                border-collapse: collapse;
            }
        </style>
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
                            <li><a href=" Admin_hom.jsp"><strong>Back</strong></a></li>
                           
                        </ul>
                    </div>
                    <div class="clr"></div>
                </div>
            </div>
            <div class="content">
                <div class="content_resize">
                    <table align="center">
                        <tr align="center" bgcolor="#c0c0c0" style="font-family:verdana;font-size:18px;">
                            <td height="36">User Id</td>
                            <td>Data File Name</td>
                            <td>Group</td>
                            <td>Status</td>
                            <td>Date</td>

                        </tr>
                        <%
                            String host = null, name = null, group = null, status = null, date = null, mobile = null, gen = null, blood = null, dis = null, zip = null;
                            Connection con = null;
                            try {
                                con = Dbcon.getCon();
                                Statement st = con.createStatement();
                                String query1 = "select * from log";
                                ResultSet rs = st.executeQuery(query1);
                                while (rs.next()) {
                                    host = rs.getString("user");
                                    name = rs.getString("filename");
                                    group = rs.getString("group");
                                    status = rs.getString("status");
                                    date = rs.getString("date");
                        %>
                        <tr align="center" style="font-family:verdana;font-size:12px;"> 
                            <td> <font color="#5eaaff"><%=host%></font> </td>
                            <td> <font color="#5eaaff"><%=name%></font> </td>
                            <td> <font color="#5eaaff"><%=group%></font> </td>
                            <td> <font color="#5eaaff"><%=status%></font> </td>
                            <td> <font color="#5eaaff"><%=date%></font> </td>
                        </tr>
                        <%
                                }
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        %>
                    </table>  
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
