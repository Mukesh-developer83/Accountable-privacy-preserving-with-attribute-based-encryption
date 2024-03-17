<%@page import="Action.TrippleDes"%>
<%@page import="Action.Dbcon"%>
<%@page import="java.sql.Connection"%>
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
                            
                            <li><a href="Mem_Hom.jsp"><strong>Home</strong> </a></li>
                            

                        </ul>
                    </div>
                    <div class="clr"></div>
                </div>
            </div>
            <div class="content">
                <div class="content_resize">
                    <div class="section_01_left" style="margin-left: 20px;">
                        <p style="font-family: monospace; font-size: xx-large;">File Content</p>
                        <p> 
                            <%
                                String getFile = session.getAttribute("fid").toString();
                                Connection con = Dbcon.getCon();
                                Statement st = con.createStatement();
                                ResultSet rs = st.executeQuery("select * from upload where filename = '" + getFile + "' ");
                                if (rs.next()) {
                                    if (request.getParameter("keys").equals(rs.getString("key_"))) {
                                        String getCipher = rs.getString("data");
                                        String plainText = new TrippleDes().decrypt(getCipher);
                            %>
                            <form action="updateFile" method="post">
                                <textarea name="gets" style="width: 500px;height: 500px;"> <%=plainText%></textarea>
                                <input type="submit" value="Update And Save"/>
                            </form>
                             <form action="download.jsp" method="get">
                               <!-- <input type="submit" value="download"/>-->
                            </form>
                            <%
                                    } else {
                                        out.println("File Key Error");
                                    }
                                } else {
                                    out.println("File Error...!");
                                }
                            %>
                        </p> 
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
