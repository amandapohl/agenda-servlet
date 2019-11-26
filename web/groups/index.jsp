<%--
  Created by IntelliJ IDEA.
  User: mhadaniya
  Date: 11/11/19
  Time: 21:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="br.edu.unifil.agenda.model.Group, java.util.*" %>
<html>
<head>
    <link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css" rel="stylesheet">

    <title>Title</title>
</head>
<body>


<% List<Group> groups = (ArrayList<Group>)request.getAttribute("groups");

    for(Group group: groups)
    {
        out.print("Id: " + group.getDescription());
        out.print("<br/>");
        out.print("<br/>");
    }

%>


</body>
</html>
