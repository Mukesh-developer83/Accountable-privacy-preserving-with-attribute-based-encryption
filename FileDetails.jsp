<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="Action.Dbcon"%>
<%@page import="java.sql.Connection"%>
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
           <style>
            table{
                width: 600px;
                
            }
            table,tr,td{
                border-style: solid;
                border-color: burlywood;
                border-collapse: collapse;
            }
        </style>
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
                            <li class="active"><a href="Home.jsp"><strong>Home</strong></a></li>
                            <li><a href="Mem_Hom.jsp"><strong>Back</strong></a></li>
                        </ul>
                    </div>
                    <div class="clr"></div>
                </div>
            </div>
            <div class="content_resize"><br></br>
                <table align="center" style="font-family: fantasy; ">
                    <tr align="center"style="font-family:verdana;font-size:20px;background-color: wheat;color: #959595">
                        <td height="36">Data File Name</td>
                        <td>Date & Time</td>
                      <!--  <td>Delete</td>-->
                        <td>View</td>
                    </tr>
                    <%
                        String host = null, name = null, pass = null, mail = null, user_group = null, mobile = null, gen = null, blood = null, dis = null, zip = null;
                        Connection con = null;
                        try {
                            con = Dbcon.getCon();
                            Statement st = con.createStatement();
                            Statement st1 = con.createStatement();
                            String query1 = "select * from upload ";
                            ResultSet rs = st.executeQuery(query1);
                            while (rs.next()) {
                                host = rs.getString("filename");
                                name = rs.getString("date");
                                session.setAttribute("fname", host);
                                mail = rs.getString("id");
                    %>
                    <tr align="center" style="font-family:verdana;font-size:12px;"> 
                        <td> <font color="#000034"><%=host%></font> </td>
                        <td> <font color="#000034"><%=name%></font> </td>
                        <!--<td> <font color="#000034"><a href="Del_Verify.jsp?<%=mail%>">Delete</a></font> </td>-->
                        <td> <font color="#000034"><a href="view.jsp?<%=host%>">View</a></font> </td>
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

            <div class="footer">
                <div class="footer_resize">
                  
                    <div class="clr"></div>
                </div>
            </div>
        </div>
    </body>
</html>
