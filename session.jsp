
<html>
<head>
    <title>Session Counter</title>
</head>

<body>
<%@ page import="com.javacoderanch.servlet.examples.SessionCounter" %>
<%
    SessionCounter counter = (SessionCounter) session
            .getAttribute("counter");
%>
Number of online user(s): <%= counter.getActiveSessionNumber() %>
</body>
</html>