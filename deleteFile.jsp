<%@page import="Action.Dbcon"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String key_ = null;
String typeKey = request.getParameter("keys");
String s = request.getQueryString();
String getF = session.getAttribute("fname").toString();
System.out.println("getF "+getF);
String gr=null;
String uid = session.getAttribute("ID").toString();
System.out.println("id is "+uid);

Connection con = Dbcon.getCon();
Statement st = con.createStatement();
Statement st1 = con.createStatement();
Statement st2 = con.createStatement();
String fileUp_user = null;
//int i = st.executeUpdate("");
ResultSet rs = st.executeQuery("select * from upload where filename = '"+getF+"' ");
if(rs.next()){
    gr = rs.getString("gro");
    key_ = rs.getString("key_");
    fileUp_user = rs.getString("user");
    if(key_.equals(typeKey)){
        if(fileUp_user.equals(uid)){
            
        

        
        
        int i1 = st1.executeUpdate("delete from upload where filename = '"+getF+"' ");
        if(i1!=0){
             System.out.println("ok deleted..");
             int i2 = st2.executeUpdate("insert into log values('"+uid+"','"+getF+"','"+gr+"','Deleted',now())");
             if(i1!=0){
                 response.sendRedirect("FileDetails.jsp?File Deleted...");
             }else{
                 out.println("N/W Path Error");
             }
        }        
        
       
    }else{
            out.println("User Error....!");
    }
      
       } else{
    out.println("File Key Error....");
       }
}
else{
    out.println("File Name Error...!");
}
%>
