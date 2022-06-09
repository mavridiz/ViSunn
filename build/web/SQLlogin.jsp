<%@page import="org.vigendy.helper.relSusUsuHelper"%>
<%@page import="org.vigendy.dao.relSusUsu"%>
<%@page import="org.vigendy.dao.Usuario"%>
<%@page import="org.vigendy.helper.UsuarioHelper"%>
<%@page import="org.vigendy.helper.Sesion.loginHelper"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset='utf-8'>
        <title>Login</title>
        <meta name='viewport' content='width=device-width, initial-scale=1'>
        <script src="https://cdn.tailwindcss.com"></script>
        <script defer src="https://unpkg.com/alpinejs@3.x.x/dist/cdn.min.js"></script>
        <link rel='stylesheet' href='app.css'>
        <link rel='stylesheet' href='components-v2.css'>
    </head>
    <body class="p-6 m-6">
        <h1 class="text-4xl font-extrabold tracking-tight text-black md:text-5xl lg:text-6xl">Algo sali&oacute; mal!</h1>
        <%
            relSusUsuHelper relhelper = new relSusUsuHelper();
            UsuarioHelper usuarioHelper = new UsuarioHelper();
               String mensaje = "";
               
               if( new loginHelper().VerifyCorreo(request) == false )
               {
                   mensaje = "El correo no está regisrado <a href='heroVS.jsp' class='inline-flex items-center px-4 py-2 border border-transparent text-sm font-medium rounded-md text-white bg-green-600 hover:bg-green-800 duration-300 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-teal-500'>¡Registrate para gozar de ViSunn!</a>";
               }
               else
               if( new loginHelper().VerifyPassword(request) == false)
               {
                    mensaje = "La contraseña es incorrecta. <br><br><br><a href='loginVS.jsp' class='inline-flex items-center px-4 py-2 border border-transparent text-sm font-medium rounded-md text-white bg-green-600 hover:bg-green-800 duration-300 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-teal-500'>Repite el proceso</a>";
               }
               else
               {
                    if( request == null )
                    {
                    return;
                    }    
                    else 
                    {
                        HttpSession mysession = request.getSession(true);
                        Usuario user = usuarioHelper.getUsuarioByCorreo(request);   
                        mysession = request.getSession();
                        mysession.setAttribute("usr",user);
                        response.sendRedirect("moduloVSinicio.jsp");
                    }
               }
           %>
           <br>
           <br>
           <p><%=mensaje%></p>
    </body>
</html>

<%

    


%>