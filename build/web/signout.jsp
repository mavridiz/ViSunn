<%-- 
    Document   : signout
    Created on : 07-jun-2022, 18:14:12
    Author     : micke
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset='utf-8'>
        <title>Cerrar sesi&oacute;n</title>
        <meta name='viewport' content='width=device-width, initial-scale=1'>
        <script src="https://cdn.tailwindcss.com"></script>
        <script defer src="https://unpkg.com/alpinejs@3.x.x/dist/cdn.min.js"></script>
        <link rel='stylesheet' href='app.css'>
        <link rel='stylesheet' href='components-v2.css'>
    </head>
    <body>
        <div class="p-6 m-6">
            <h1 class="text-4xl font-extrabold tracking-tight text-black md:text-5xl lg:text-6xl">Algo sali&oacute; mal!</h1>
        <br><br>
        <a href="loginVS.jsp" class="inline-flex items-center px-4 py-2 border border-transparent text-sm font-medium rounded-md text-white bg-green-600 hover:bg-green-800 duration-300 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-teal-500"> Vuelve a intentarlo </a>
        </div>
        
                  <%
                      HttpSession mysession= (HttpSession) request.getSession( false);
                      mysession.invalidate();
                      response.sendRedirect("heroVS.jsp");
                  %>
    </body>
</html>
