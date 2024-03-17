<%@page import="Action.TrippleDes"%>
<%@page import="Action.Dbcon"%>
<%@page import="java.io.OutputStream"%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    String cipher = null, gr = null, name = null;
    String getFile = request.getQueryString();
    String getUser = session.getAttribute("ID").toString();
    System.out.println("user is " + getUser);
    Connection con = Dbcon.getCon();
    Statement st = con.createStatement();
    Statement st1 = con.createStatement();
    Statement st2 = con.createStatement();
    ResultSet rs = st.executeQuery("select * from upload where filename = '" + getFile + "' ");
    ResultSet rs1 = st2.executeQuery("select * from reg where user = '" + getUser + "' ");

   
    if (rs.next()) {
        gr = rs.getString("gro");
        name = rs.getString("filename");
        cipher = rs.getString("data");
    }
    if(rs1.next()){
        
    
     if(rs1.getString("group").equalsIgnoreCase(gr)){
         
     
    String plain = new TrippleDes().decrypt(cipher);

    byte[] data = plain.getBytes();
    int ii = st1.executeUpdate("insert into log values('"+getUser+"','"+getFile+"','"+gr+"','Download',now())");
    if (data != null) {

        System.out.println("go>>>>>>>>>>");

        response.setContentType("image/jpg");
        response.setHeader("Content-Disposition", "attachment; filename=\"" + name + "\"");

        OutputStream os = response.getOutputStream();
        os.write(data);
        os.close();
        data = null;
        //session.removeAttribute("document1");

    }

     }else{
        out.println(" You are Not A Member....!");
     }
         }else{
         out.println(" Database Error Occured....!");
         }

%>