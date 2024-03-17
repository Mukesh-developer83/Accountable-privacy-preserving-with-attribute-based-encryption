<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!--
Design by http://www.bluewebtemplates.com
Released for free under a Creative Commons Attribution 3.0 License
-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Template</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<!-- CuFon: Enables smooth pretty custom font rendering. 100% SEO friendly. To disable, remove this section -->
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<!-- CuFon ends -->
</head>
<body>
<div class="main">

 

  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
        <h2>
<%@page import='java.io.*,java.sql.*'%>
<%
String opt="flight_data";
try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:4306/dpfcb","root","root");
%>
<table id="table-design1" bgcolor="#FFFFFF" width="800" border="0" >

<thead>
 <th>Disease Predition Results</th>
 </thead>
</table>
<table id="table-design1" bgcolor="#FFFFFF" width="800" border="0" >
<tbody> 
<%
String Age=request.getParameter("Age");
String Sex=request.getParameter("Sex");
String Cp=request.getParameter("Cp");
String Trestbps=request.getParameter("Trestbps");
String Chol=request.getParameter("Chol");
String Fbs=request.getParameter("Fbs");
String Restecg=request.getParameter("Restecg");
String Thalach=request.getParameter("Thalach");
String Exang=request.getParameter("Exang");
String Oldpeak=request.getParameter("Oldpeak");
String Slope=request.getParameter("Slope");
String Ca=request.getParameter("Ca");
String Thal=request.getParameter("Thal");
String Target=request.getParameter("Target");

int age=Integer.parseInt(Age);
int sex=Integer.parseInt(Sex);
int cp=Integer.parseInt(Cp);
int trestbps=Integer.parseInt(Trestbps);
int chol=Integer.parseInt(Chol);
int fbs=Integer.parseInt(Fbs);
int restecg=Integer.parseInt(Restecg);
int thalach=Integer.parseInt(Thalach);
int exang=Integer.parseInt(Exang);
int oldpeak=Integer.parseInt(Oldpeak);
int slope=Integer.parseInt(Slope);
int ca=Integer.parseInt(Ca);
int thal=Integer.parseInt(Thal);
int target=Integer.parseInt(Target);


String sex1="",fbs1="",restecg1="",thalch1="",exang1="",oldpeak1="",slop1="",ca1="",thal1="",cp1="";
int page0=0,psex=0,pfbs=0,prestecg=0,pthalch=0,pexang=0,poldpeak=0,pslop=0,pca=0,pthal=0,pcp=0;
if(age<25)
{
page0=1;
}
else if(age<50)
{
page0=2;
}else if(age<75)
{
page0=3;
}
else
{
page0=4;
}
if(sex==1)
{
sex1="Male";
psex=1;
}
else
{
sex1="Female";
psex=2;
}
if(fbs==1)
{
fbs1=">120";
pfbs=4;
}
else
{
fbs1="<120";
pfbs=1;
}
if(exang==1)
{
exang1="YES";
pexang=1;
}
else
{
exang1="NO";
pexang=2;
}
if(cp==1)
{
cp1="Atypical Angina";
pcp=4;
}
else if(cp==2)
{
cp1="Non-Anginal Pain";
pcp=3;
}
else
{
cp1="Asymptomatic";
pcp=0;
}
if(restecg==0)
{
restecg1="Normal";
prestecg=0;
}
else if(restecg==1)
{
restecg1="Abnormality";
prestecg=3;
}
else
{
restecg1="Probable Or Definite";
prestecg=4;
}
int trc=page0+psex+pfbs+prestecg+pthalch+pexang+poldpeak+pslop+pca+pthal+pcp;



String qry="SELECT age,sex,cp,trestbps,chol,fbs,restecg,thalach,exang,oldpeak,slope,ca,thal,target FROM trainset  WHERE Age="+Age+" and Sex="+Sex+" and Cp="+Cp+" and Trestbps="+Trestbps+" and Chol="+Chol+" and Fbs="+Fbs+" and Restecg="+Restecg+" and Thalach="+Thalach+" and Exang="+Exang+" and Oldpeak="+Oldpeak+" and Slope="+Slope+" and Ca="+Ca+" and Thal="+Thal;
System.out.println(qry);

Statement st=con.createStatement();
		ResultSet rs =st.executeQuery(qry);
		
if(rs.next())
{

%>

<tr><td>
YES<%=trc%>

</td>
</tbody></table></form>
</tr>

<%}
else
{
%>

<tr><td>
NO<%=trc%>

</td>
</tbody></table></form>
</tr>

<%
}%>
</tbody></table></form>



<%
//con.commit();
con.close();
}catch(Exception ex){out.println(ex.toString());}
%>

      </div>
    </div>
  </div>


  
      
      
</div>
</body>
</html>

