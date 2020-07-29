
<%
String filename="download.jsp";
String filepath="C:\\Users\\OJAS AGRAWAL\\Desktop\\Extra\\apache-tomcat-9.0.0.M17\\webapps\\ojas\\proo\\files\\";
response.setContentType("APPLICATION/OCTET-STREAM");
response.setHeader("Content-Disposition","attachment; filename=\"" + filename+ "\"");
java.io.FileInputStream fileInputStream=new java.io.FileInputStream(filepath + filename);
int i;
while((i=fileInputStream.read())!=-1)
{
	out.write(i);
}
fileInputStream.close();
%>