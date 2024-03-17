
<%@page import="Action.Dbcon"%>
<%@page import="Action.TrippleDes"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
    String gets = null;
    String getString = request.getQueryString();
    Connection con = Dbcon.getCon();
    Statement st = con.createStatement();
    Statement st1 = con.createStatement();
    ResultSet rs = st1.executeQuery("select * from reg where  user = '" + getString + "' ");
    if (rs.next()) {
        gets = new TrippleDes().encrypt(rs.getString("group"));
    }
    System.out.println("tt " + gets);
    int i = st.executeUpdate("update reg set status = 'NO' ,group_sign = '" + gets + "' where user = '" + getString + "' ");
    if (i != 0) {
        response.sendRedirect("Group_View.jsp?group=" + session.getAttribute("gid").toString());
    } else {
        //response.sendRedirect("");
        out.println("Account Activation Error check ur data....");
    }
%>
