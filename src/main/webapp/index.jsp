<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="modelos.Mazo" %>
<%@ page import="modelos.CartaTemplate" %>
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
        <br>
        <div class="indexbody">
            <h3>
            ¡Bienvenido al juego de encontrar las parejas, estimado/a jugador/a!<p>
            <br>
            En el tablero se mostrarán 40 cartas de la baraja española posicionadas bocabajo.<br>
            El objetivo es encontrar la pareja de cada carta hasta que no quede ninguna.<p>
            <br>
            Instrucciones:<br>
            1. Haz click sobre una carta para girarla y conocer su número y palo.<br>
            2. Haz click sobre una segunda carta para girarla y conocer su número y palo.<br>
            3. Haz click nuevamente sobre cualquier carta para comprobar si las cartas mostradas son pareja o no.<br>
            - En caso de ser pareja las cartas volteadas, desaparecerán ambas.<br>
            - En caso de no ser pareja las cartas volteadas, ambas se volverán a poner del revés.<br>
            4. El juego terminará cuando hayas encontrado todas las parejas.<p>
            <br>
            Dicho esto, haz click en el botón "Start Game" cuando estés listo/a para comenzar el juego.<br>
            ¡Mucha suerte, jugador/a!<p>
            </h3>
        </div>
        <br>
        <div class="start">
            <a href="game.jsp"><h2>Start game</h2></a>
        </div>
        <%
        Mazo mazo = (Mazo) session.getAttribute("mazo");
        if (mazo != null){
            mazo = null;
            session.setAttribute("mazo", mazo);
        }
        %>
    </body>
</html>