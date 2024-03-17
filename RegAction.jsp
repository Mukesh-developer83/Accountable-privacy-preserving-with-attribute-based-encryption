<%@page import="Action.mail_Senddd"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="Action.TrippleDes"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    String user = request.getParameter("user");
    String pass = request.getParameter("pass");
    String s = request.getParameter("sex");
    String mail = request.getParameter("mail");
    String contact = request.getParameter("contact");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/oruta", "root", "root");
    Statement st = con.createStatement();
    int i = st.executeUpdate("insert into regpage values('" + user + "','" + pass + "','" + s + "','" + mail + "','" + contact + "','" + new TrippleDes().encrypt(s) + "')");
    if (i != 0) {
        mail_Senddd.sendMail(new TrippleDes().encrypt(s), user, mail);
        response.sendRedirect("Login.jsp?msg=Register success");
    } else {
        response.sendRedirect("Register.jsp?msgr=Reg fail");
    }


%>