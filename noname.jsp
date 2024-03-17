<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Action.Dbcon"%>

<%
    Connection con = Dbcon.getCon();
    Statement st = con.createStatement();


    ResultSet rs = st.executeQuery("select * from upload where filename = '" + getF + "' ");
    if (rs.next()) {
        gr = rs.getString("gro");
        key_ = rs.getString("key_");
        fileUp_user = rs.getString("user");
        if (key_.equals(typeKey)) {
            if (fileUp_user.equals(uid)) {
                Statement st = con.createStatement();






%>