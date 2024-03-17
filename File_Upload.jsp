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
            #f{
                position: relative;
                left: 150px;
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
                            <li><a href="Home.jsp"><strong>Logout</strong></a></li>
                            <li><a href="Mem_Hom.jsp"><strong>Back</strong></a></li>
                  
                       
                        </ul>
                    </div>
                    <div class="clr"></div>
                </div>
            </div>
            <div class="content">
                <div class="content_resize">
                    
                    <fieldset style="background-color: wheat;width: 500px;position: relative;left: 150px;">
<label name="aa"> <%if(request.getParameter("msg")!=null){out.println(request.getParameter("msg"));}%></label>
                    <form name="" action="FogNode" method="post" enctype="multipart/form-data">
                        <p style="font-size: 20px;position: relative;left: 150px;">File Upload:</p>
                        <table >
                            <tr style="height: 40px;" id="f"><td></td><td> <input name="file" type="file" id="file"/>    </td></tr>
                            <tr style="height: 20px;width: 150px; " id="f">
                                <td></td>
                                <td>
                                    <pre>
<input type="submit" value="Upload" style="height: 30px;width: 90px;background-color: #009933"/>     <input type="reset" value="Reset" style="height: 30px;width: 90px;background-color: tomato"/>
                                    </pre>
 </td>
                            </tr>
                        </table>
                    </form> 
                    </fieldset>
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
