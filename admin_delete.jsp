<%@page import="Action.Dbcon"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
//String key_ = null;
String typeKey = request.getParameter("keys");
String s = request.getQueryString();
String getF = session.getAttribute("fname").toString();
System.out.println("getF "+getF);
Connection con = Dbcon.getCon();
Statement st = con.createStatement();
int i = st.executeUpdate("delete from upload where id = '"+request.getQueryString()+"' ");
if(i!=0){
    response.sendRedirect("AdminFileDeta.jsp?file Deleted...!");
}

%>