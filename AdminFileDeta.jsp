<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="Action.Dbcon"%>
<%@page import="Action.BlockChainFac"%>
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
    </head>
       <style>
            table{
                width: 800px;
                
            }
            table,tr,td{
                border-style: solid;
                border-color: salmon;
                border-collapse: collapse;
            }
        </style>
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
                    <table align="center">
                        <tr align="center" bgcolor="salmon" style="font-family:verdana;font-size:18px;">
                            <td height="36">Data Name</td>
                            <td>Data Provider</td>
                            <td>Date</td>
      	           <td>Signature</td>
                            <td>Status</td>
	           <td>Integrity</td>
 	           <td>Delete</td>
                        </tr>
<%@page import='java.util.*'%>
                        <%
                            String sig1=null,changes=".",status=null,sig=null,data=null,host = null, name = null,user=null, pass = null, fid = null, pdfass = null, mobile = null, gen = null, blood = null, dis = null, zip = null;
                            Connection con = null;
                            try {
		
                                con = Dbcon.getCon();
                                Statement st = con.createStatement();
                                String query1 = "select * from upload";
		
		
		int i=1;
                               
                                ResultSet rs = st.executeQuery(query1);
		i=0;
                                while (rs.next()) {
                                    fid = rs.getString("id");
                                    host = rs.getString("filename");
                                    name = rs.getString("date");
                                    user=rs.getString("user");
		data=rs.getString("data");
		sig=rs.getString("signature");
		sig1=Integer.toHexString(data.hashCode());
		if(sig1.equals(sig))
		changes="<font color='green'>Verified</font>";
		else
		changes="<font color='red'>Failed</font>";
		status=rs.getString("filestatus");
                                    session.setAttribute("fname", host);
                        %>
                        <tr align="center" style="font-family:verdana;font-size:12px;"> 
                            <td> <font color="#5eaaff"><%=host%></font> </td>
                             <td> <font color="#5eaaff"><%=user%></font> </td>
                            <td> <font color="#5eaaff"><%=name%></font> </td>
 	          <td> <font color="#5eaaff"><%=sig%></font> </td>
 	          <td> <font color="#5eaaff"><%=status%></font> </td>
		 <td> <font color="#5eaaff"><%=changes%></font> </td>
                            <td> <font color="#5eaaff"><a href="admin_delete.jsp?<%=fid%>">Delete</a></font> </td>
                        </tr>
                        <%
	i++;
                                }
		BlockChainFac.updateBCSig();
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
