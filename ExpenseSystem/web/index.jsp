<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Expense System</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/simple-sidebar.css" rel="stylesheet">
        <script src="js/jquery-2.1.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </head>
    <body class="container-fluid">
        <div class="row"> 
            <h1>Expense System</h1>
        </div>
        <div class="row">
            <%
                String view = (String) request.getAttribute("view");
                if ((session == null) || (session.isNew()) || (view == null)) {
                    view = "login.jsp";
                    session.invalidate();
                }
                view = "/WEB-INF/jsp/" + view;
            %>    
            <jsp:include page="<%= view%>"></jsp:include>
        </div>
    </body>
</html>
