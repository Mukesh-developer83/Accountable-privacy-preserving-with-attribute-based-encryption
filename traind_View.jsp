<%@page import="java.sql.Connection"%>
<%@page import="Action.Dbcon"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!--
https://towardsdatascience.com/heart-disease-uci-diagnosis-prediction-b1943ee835a7
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
                            <li><a href="predictor_hom.jsp"><strong>Home</strong></a></li>
                        </ul>
                    </div>
                    <div class="clr"></div>
                </div>
            </div>
            <div class="content">
                <div class="content_resize">
                    
                        <table  align="center">
                           
                            <%
                                 Connection con = null;
                                try {
                                    con = Dbcon.getCon();
                                    Statement st = con.createStatement();
                                    String query1 = "select * from trainset ";
                                    ResultSet rs = st.executeQuery(query1);
		ResultSetMetaData rd=rs.getMetaData();
%>
 <tr align="center" bgcolor="yellowgreen" style="font-family:verdana;font-size:15px;">
<%
for(int i=1;i<=rd.getColumnCount();i++)
		{
%>
                                <td height="35"><%=rd.getColumnName(i)%></td>
              <%}%>
                            </tr>
<%
                                    while (rs.next()) {
                                  %>
                            <tr align="center" style="font-family:verdana;font-size:12px;"> 
		<%
		for(int i=1;i<=rd.getColumnCount();i++)
		{
		%>
                                <td> <font color="#000034"><%=rs.getString(i)%></font> </td>
                                <%}%>

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
