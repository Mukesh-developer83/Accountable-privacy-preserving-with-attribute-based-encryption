<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Action.Dbcon"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
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
                        <ul>
                            <li><a href="Home.jsp"><strong>Logout</strong></a></li>
                            <li><a href="Admin_hom.jsp"><strong>Home</strong></a></li>
<!--                            <li><a href=" Admin_hom.jsp"><strong>Back</strong></a></li>-->
                        </ul>
                    </div>
                    <div class="clr"></div>
                </div>
            </div>
            <div class="content">
                <div class="content_resize">
                    <form action="Group_View.jsp" method="get">
                        <p style="font-family: cursive; font-size:30px;">View Group
                            <select id="keys" name="group" style="width: 220px; height: 30px;font-family:fantasy" onchange="loadXMLDoc()"> 
                                <option value="-1">-Select-</option>
                                <%
                                    String sql1 = "SELECT * FROM `group` ";
                                    System.out.println(";;;;;;;;;;;;;;;" + sql1);
                                    PreparedStatement pst1 = null;
                                    Connection conn1 = null;
                                    try {
                                        conn1 = Dbcon.getCon();
                                        pst1 = conn1.prepareStatement(sql1);
                                        ResultSet rs1 = pst1.executeQuery();
                                        while (rs1.next()) {%>
                                <option value="<%=rs1.getString("group_name")%>"><%=rs1.getString("group_name")%></option>
                                <%
                                        }
                                    } catch (Exception e) {
                                    }%>
                            </select>&nbsp;&nbsp;&nbsp;<input type="submit" value="View" style="width:80px; height: 30px;font-family:cursive" /> </p> 
                    </form>
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
