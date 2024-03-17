<%@page import="java.sql.Connection"%>
<%@page import="Action.Dbcon"%>
<%@page import="java.sql.Statement"%>
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
          <style>
            table{
                width: 850px;
                
            }
            table,tr,td{
                border-style: solid;
                border-color: yellowgreen;
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
                           <li><a href="Home.jsp"><strong>Logout</strong></a></li>
                            <li><a href="Admin_hom.jsp"><strong>Home</strong></a></li>
                        </ul>
                    </div>
                    <div class="clr"></div>
                </div>
            </div>
            <div class="content">
                <div class="content_resize">
                    
                        <table  align="center">
                            <tr align="center" bgcolor="yellowgreen" style="font-family:verdana;font-size:15px;">
                                <td height="35">Username</td>
                                <td>Password</td>
                                <td>Group</td>
                                <td>E-Mail</td>
                                <td>Mobile</td>
                                <td>Place</td>
                                <td>Status</td>
                                <td>Activate Signature</td>
                                <td>Deactivate</td>
                            </tr>
                            <%
                                String user = null, gr = null, pass = null, email = null, place = null, mob = null, sta = null;
                                Connection con = null;
                                String names = request.getParameter("group");
                                session.setAttribute("gid", names);
                                System.out.println("get Group is " + names);
                                try {
                                    con = Dbcon.getCon();
                                    Statement st = con.createStatement();
                                    String query1 = "select * from reg where `group` =  '" + names + "'  ";//+"'";//'"+session.getAttribute("uID").toString() +"'";// "+" AND email = '"+mail+"' ";
                                    ResultSet rs = st.executeQuery(query1);
                                    while (rs.next()) {
                                        user = rs.getString("user");
                                        pass = rs.getString("pass");
                                        gr = rs.getString("group");
                                        email = rs.getString("email");
                                        mob = rs.getString("mob");
                                        place = rs.getString("place");
                                        sta = rs.getString("status");

                            %>
                            <tr align="center" style="font-family:verdana;font-size:12px;"> 
                                <td> <font color="#000034"><%=user%></font> </td>
                                <td> <font color="#000034"><%=pass%></font> </td>
                                <td> <font color="#000034"><%=gr%></font> </td>
                                <td> <font color="#000034"><%=email%></font> </td>
                                <td> <font color="#000034"><%=mob%></font> </td>
                                <td> <font color="#000034"><%=place%></font> </td>
                                <td> <font color="#000034"><%=sta%></font> </td>
                                <td> <font color="#000034"><a href="status.jsp?<%=user%>">Activate</a></font> </td>
                                <td> <font color="#000034"><a href="deactivate.jsp?<%=user%>">DeActivate Signature</a></font> </td>
                            </tr>
                            <tr>&nbsp;</tr>
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
				</div></div>
                         
                <div class="footer">
                    <div class="footer_resize">
                       
                        <div class="clr"></div>
                    </div>
                </div>
            </div>
    </body>
</html>
