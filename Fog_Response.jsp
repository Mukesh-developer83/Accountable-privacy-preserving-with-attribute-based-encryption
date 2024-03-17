
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
        <%
            if (request.getParameter("ms") != null) {
                session.setAttribute("ID", request.getParameter("ms"));
            }
        %>
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
                            <li class="active"><a href="Mem.Hom.jsp"><strong>DP Home</strong></a></li>
                        </ul>
                    </div>
                    <div class="clr"></div>
                </div>
            </div>
            <div class="content">
                <div class="content_resize">
                    <div class="templatemo_content_section_01">
                        <div class="templatemo_content_section_01">
                        <div class="section_01_left" style="margin-left: 20px;">
                   <p style="font-family: cursive; font-size:30px;"><a href="File_Upload.jsp">Submit Medical Records</a></p>
                            <!--<p style="font-family: cursive; font-size:30px;"><a href="FileDownload.jsp">File Download</a></p>-->
                            <p style="font-family: cursive; font-size:30px;"><a href="FileDetails.jsp">My Data</a></p>
                 <p style="font-family: cursive; font-size:30px;"><a href="confirm.jsp">Not Interested [ Leave_Group ] </a></p>
                        </div>                  
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
