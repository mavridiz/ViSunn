<%-- 
    Document   : buscarSub
    Created on : 9/06/2022, 01:11:36 PM
    Author     : Alumno
--%>

<%@page import="org.vigendy.dao.relSusUsu"%>
<%@page import="org.vigendy.helper.relSusUsuHelper"%>
<%@page import="org.vigendy.dao.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
<%  
    if( request == null )
    {
        return;
    }    
    else 
    {
        HttpSession mysession= (HttpSession) request.getSession( false );
            
            Usuario user = (Usuario) mysession.getAttribute("usr");
            if (user == null)
            {
                response.sendRedirect("heroVS.jsp");
            }
            
            relSusUsuHelper relhelper = new relSusUsuHelper();
            relSusUsu rel = relhelper.getRelById(request, user);
    
            mysession.setAttribute("rel",rel);
            response.sendRedirect("moduloVSuscripcionM.jsp");
    }            
%>
    </body>
</html>
