<%@ page import ="java.io.*" %>
<%@ page import ="java.net.*" %>
<%
WebSocket s=new WebSocket("localhost",3333);  
DataInputStream din=new DataInputStream(s.getInputStream());  
DataOutputStream dout=new DataOutputStream(s.getOutputStream());  
BufferedReader br=new BufferedReader(new InputStreamReader(System.in));    
String str="",str2="";  
while(!str.equals("stop"))
{  
str=br.readLine();  
dout.writeUTF(str);  
dout.flush();  
str2=din.readUTF();  
out.println("Server says: "+str2);  
}    
dout.close();  
s.close();  
%>  