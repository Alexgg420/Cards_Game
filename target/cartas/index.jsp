<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="modelos.Mazo" %>
<%@ page import="modelos.CartaTemplate" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/styles.css" type="text/css">
    </head>
<body>
    <header>
        <marquee>
            <h1>Encuentra las Parejas</h1>
        </marquee>
    </header>
    <br>
    <%
    Mazo mazo = new Mazo();
    %>
    <div class="cartas" onclick="miFuncion()">
        <%
        for (int i = 0; i < 10; i++){
            out.print(new CartaTemplate(mazo.extrae()));
        }
        %>
    </div>
    <div class="cartas">
        <%
        for (int i = 0; i < 10; i++){
            out.print(new CartaTemplate(mazo.extrae()));
        }
        %>
    </div>
    <div class="cartas">
        <%
        for (int i = 0; i < 10; i++){
            out.print(new CartaTemplate(mazo.extrae()));
        }
        %>
    </div>
    <div class="cartas">
        <%
        for (int i = 0; i < 10; i++){
            out.print(new CartaTemplate(mazo.extrae()));
        }
        %>
    </div>
    <script>
        function miFuncion() {
          alert("Selecciona su pareja.");
        }
        document.getElementById().onclick = miFuncion;
    </script>
        
</body>
</html>