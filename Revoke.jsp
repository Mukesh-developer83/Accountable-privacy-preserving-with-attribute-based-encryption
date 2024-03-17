<%@page import="Action.Dbcon"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
    String ID = session.getAttribute("ID").toString();
    Connection con = Dbcon.getCon();
    Statement st = con.createStatement();
    int i = st.executeUpdate("update reg set status = 'NO' where user = '" + ID + "'");
    if (i != 0) {
        response.sendRedirect("Home.jsp?A/c deactivated..!");
    } else {
        out.println("Revoke Error...");
    }
    List l = null;
%>