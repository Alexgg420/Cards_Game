<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="modelos.Carta" %>
<%@ page import="modelos.Mazo" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/estilos.css" type="text/css">
    </head>
    <body>
        <br>
        <header>
            <marquee>
                <h1>Encuentra las Parejas</h1>
            </marquee>
        </header>
        <div class = "conttiem"><h3>Tiempo: <span id="contador">0</span> segundos.</h3></div>
        <div class = "boton">
            <button class="botonderecha" onclick="redirect()"><h3>Finished</h3></button>
        </div>
        <br>
        <%
        Mazo mazo = (Mazo) session.getAttribute("mazo");
        if (mazo == null){
            mazo = new Mazo();
            session.setAttribute("mazo", mazo);%>
            <div class="cartas">
                <%
                for (int i = 0; i < 10; i++){
                    Carta c = mazo.extrae();
                    c.setPos(i);
                    out.print(c);
                }
                %>
            </div>
            <div class="cartas">
                <%
                for (int i = 0; i < 10; i++){
                    Carta c = mazo.extrae();
                    c.setPos(i+10);
                    out.print(c);
                }
                %>
            </div>
            <div class="cartas">
                <%
                for (int i = 0; i < 10; i++){
                    Carta c = mazo.extrae();
                    c.setPos(i+20);
                    out.print(c);
                }
                %>
            </div>
            <div class="cartas">
                <%
                for (int i = 0; i < 10; i++){
                    Carta c = mazo.extrae();
                    c.setPos(i+30);
                    out.print(c);
                }
                %>
            </div>
        <%} else {
            mazo.setCont(0);
            if (mazo.getModuleCardcount() == 0){
                Integer i = Integer.parseInt(request.getParameter("pos"));
                mazo.carta1 = mazo.cartasTablero.get(i);
                mazo.carta1.setFace(mazo.carta1.getCodigo());
            } else if (mazo.getModuleCardcount() == 1){
                Integer i = Integer.parseInt(request.getParameter("pos"));
                mazo.carta2 = mazo.cartasTablero.get(i);
                mazo.carta2.setFace(mazo.carta2.getCodigo());
            } else {
                mazo.comprobar();
            }
            mazo.setCardcount();
            %>
            <div class="cartas">
                <%
                for (int i = 0; i < 10; i++){
                    out.print(mazo.extrae());
                }
                %>
            </div>
            <div class="cartas">
                <%
                for (int i = 0; i < 10; i++){
                    out.print(mazo.extrae());
                }
                %>
            </div>
            <div class="cartas">
                <%
                for (int i = 0; i < 10; i++){
                    out.print(mazo.extrae());
                }
                %>
            </div>
            <div class="cartas">
                <%
                for (int i = 0; i < 10; i++){
                    out.print(mazo.extrae());
                }
                %>
            </div>
        <%}%>
        <script>
            function redirect() {
                window.location.href = "end.jsp";                                          //redirige al archivo end.jsp
            }
        </script>
        <script>
            var tiempoInicio = Date.now();
            setInterval(function() {                                                       //cada 100 miliseg
            var tiempoActual = Date.now();
            var tiempoTranscurrido = (tiempoActual - tiempoInicio) / 1000;                 //restamos el momento actual con el momento en que se inició el contador
            document.getElementById("contador").innerHTML = tiempoTranscurrido.toFixed(2); //toFixed para 2 decimales
            }, 100);
          </script>          
    </body>
</html>