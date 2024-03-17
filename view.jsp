<%@page import="Action.Dbcon"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String userid = session.getAttribute("ID").toString();
String fileName = request.getQueryString();
String user_group=null,file_group=null,file_key=null;

Connection con = Dbcon.getCon();
Statement st1 = con.createStatement();
Statement st2 = con.createStatement();
ResultSet rs1 = st1.executeQuery("select * from reg where user = '"+userid+"' ");
ResultSet rs2 = st2.executeQuery("select * from upload where filename = '"+fileName+"' ");

if(rs1.next()){
    user_group = rs1.getString("group");
}
if(rs2.next()){
    file_group = rs2.getString("gro");
    file_key = rs2.getString("key_");
}

if(user_group.equalsIgnoreCase(file_group)){
    response.sendRedirect("read_content.jsp?mm="+fileName);
    out.println("fine read");
    
}
else{
    out.println("not readable");
}
%>