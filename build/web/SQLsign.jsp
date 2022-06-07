<%@page import="org.vigendy.helper.UsuarioHelper"%>
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
    </body>
</html>

<%
    UsuarioHelper usuarioHelper = new UsuarioHelper();
    
    if( request == null )
    {
        return;
    }
    else 
    {
        if ( new UsuarioHelper( ).addUsuario(request) )
        {
            response.sendRedirect("loginVS.jsp");
        }

    }
%>
