<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="mydomain.myapp.controller.HelloController" %>
<!DOCTYPE html>
<html>
  <body>
    <% HelloController hello = new HelloController();
    String secValue = hello.secretsVal();
    String propValue = hello.propertyVal();
    %>
    
    <p> Reading config Value: <%=propValue%> </p>
    <p> Reading secrets Value: <%=secValue%> </p>
  </body>
</html>
