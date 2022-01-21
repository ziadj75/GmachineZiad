<%-- 
    Document   : indexe
    Created on : Jan 2, 2022, 1:39:34 PM
    Author     : Lenovo X1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include  file="/include/css.jsp"%>
         <%@include  file="/include/javascriptSalle.jsp"%>


    </head>
    <body id="page-top">
        <%String uid = (String)session.getAttribute("user");
                if (uid == null)
                {
        %><!-- NOT A VALID USER, IF THE USER TRIES TO EXECUTE LOGGED IN PAGE DIRECTLY, ACCESS IS RESTRICTED -->
                     <jsp:forward page="login.jsp"/>
                                         <%
                }
                else
                { 
         %>
        <div id="wrapper">
            <%@include file="/include/sidebar.jsp" %> 
          
            <div id="content" style="width: 100%">
              <%@include file="/include/header.jsp" %>
            <%@include file="/include/salle.jsp" %>
            </div>

        </div>
       <%}
        %>
    </body>
</html>
