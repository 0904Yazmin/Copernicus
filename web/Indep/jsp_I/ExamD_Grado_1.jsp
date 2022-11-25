<%@page import="Conexion.BD"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>

<html>
    <head>
        <title>Examen diagnóstico</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../css_I/examD.css" ><!--  -->
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');
        </style>
        <link rel="shorcut icon" href="../../General/img/logos/Newlogo.png">
    </head>
    <body>
        <header >
            <img src="../../General/img/logos/Newlogo.png" alt="logoCS" class="imglogo" style="width: 40px; height: 40px;"/>
            <h1>Copernicus System</h1>
        </header>

        <div class="container">
            <section id="p0">
                <h3>1. �Qu� es el espacio?</h3>
                <label>
                    <input type="radio" value="1" name="p0" onclick="respuesta(0, this)">Es un lugar donde se encuentran muchos cuerpos celestes
                </label>
                <label>
                    <input type="radio" value="2" name="p0" onclick="respuesta(0, this)">Es un lugar en el que no hay nada
                </label>
                <label>
                    <input type="radio" value="3" name="p0" onclick="respuesta(0, this)">Es la presentaci�n de un lugar en el cielo
                </label>
            </section>

            <section id="p1">
                <h3>2. �Qu� es el sistema solar?</h3>
                <label>
                    <input type="radio" value="1" name="p1" onclick="respuesta(1, this)">Conjunto de estrellas que orbitan entre ellas
                </label>
                <label>
                    <input type="radio" value="2" name="p1" onclick="respuesta(1, this)">Conjunto de cuerpos que orbitan a una estrella
                </label>
                <label>
                    <input type="radio" value="3" name="p1" onclick="respuesta(1, this)">Conjunto de cuerpos que orbitan entre ellos
                </label>
            </section>

            <section id="p2">
                <h3>3. Selecciona los nombres de los planetas que conforman el sistema solar en el orden correcto</h3>
                <label>
                    <input type="radio" value="1" name="p2" onclick="respuesta(2, this)">Mercurio, Marte, J�piter, Tierra, Venus, Saturno, Urano, Neptuno

                </label>
                <label>
                    <input type="radio" value="2" name="p2" onclick="respuesta(2, this)">Mercurio, Venus, Tierra, Marte, J�piter, Saturno, Urano, Neptuno

                </label>
                <label>
                    <input type="radio" value="3" name="p2" onclick="respuesta(2, this)">Mercurio, Urano, J�piter, Saturno, Marte, Venus, Tierra, Neptuno


                </label>
            </section>

            <section id="p3">
                <h3>4. El d�a y la noche se generan a partir del movimiento de?</h3>
                <label>
                    <input type="radio" value="1" name="p3" onclick="respuesta(3, this)">traslaci�n
                </label>
                <label>
                    <input type="radio" value="2" name="p3" onclick="respuesta(3, this)">rotaci�n
                </label>
                <label>
                    <input type="radio" value="3" name="p3" onclick="respuesta(3, this)">�rbita
                </label>
            </section>

            <section id="p4">
                <h3>5. �Qu� son los cometas?</h3>
                <label>
                    <input type="radio" value="1" name="p4" onclick="respuesta(4, this)">Cuerpos que tienen una �rbita cerca del sol
                </label>
                <label>
                    <input type="radio" value="2" name="p4" onclick="respuesta(4, this)">Cuerpos que tienen una �rbita lejos del sol
                </label>
                <label>
                    <input type="radio" value="3" name="p4" onclick="respuesta(4, this)">Cuerpos que giran en una orbita que se acerca y aleja del sol
                </label>
            </section>

            <section id="p5">
                <h3>6. �De qu� forma son las orbitas de los planetas?</h3>
                <label>
                    <input type="radio" value="1" name="p5" onclick="respuesta(5, this)">Circulares
                </label>
                <label>
                    <input type="radio" value="2" name="p5" onclick="respuesta(5, this)">El�pticas
                </label>
                <label>
                    <input type="radio" value="3" name="p5" onclick="respuesta(5, this)">Esf�ricas
                </label>
            </section>

            <section id="p6">
                <h3>7. �Qui�n fue el padre de la astronom�a moderna?</h3>
                <label>
                    <input type="radio" value="1" name="p6" onclick="respuesta(6, this)">Galileo Galilei
                </label>
                <label>
                    <input type="radio" value="2" name="p6" onclick="respuesta(6, this)">Albert Einstein
                </label>
                <label>
                    <input type="radio" value="3" name="p6" onclick="respuesta(6, this)">S�crates
                </label>
            </section>

            <section id="p7">
                <h3>8. �C�mo se llama la teor�a m�s aceptada de la creaci�n del universo?</h3>
                <label>
                    <input type="radio" value="1" name="p7" onclick="respuesta(7, this)">Big Bounce
                </label>
                <label>
                    <input type="radio" value="2" name="p7" onclick="respuesta(7, this)">Big Bang
                </label>
                <label>
                    <input type="radio" value="3" name="p7" onclick="respuesta(7, this)">Big Creation
                </label>
            </section>

            <section id="p8">
                <h3>9. �A cu�nto equivale un a�o luz en kil�metros?</h3>
                <label>
                    <input type="radio" value="1" name="p8" onclick="respuesta(8, this)">9.46x10 ^12
                </label>
                <label>
                    <input type="radio" value="2" name="p8" onclick="respuesta(8, this)">8.45x10 ^15
                </label>
                <label>
                    <input type="radio" value="3" name="p8" onclick="respuesta(8, this)">9.25x10 ^12
                </label>
            </section>

            <section id="p9">
                <h3>10. �Qu� tipo de fuerza ejerce la gravedad?</h3>
                <label>
                    <input type="radio" value="1" name="p9" onclick="respuesta(9, this)">Expansi�n
                </label>
                <label>
                    <input type="radio" value="2" name="p9" onclick="respuesta(9, this)">Atracci�n
                </label>
                <label>
                    <input type="radio" value="3" name="p9" onclick="respuesta(9, this)">Expulsi�n
                </label>
            </section>

            <section id="p10">
                <h3>11. �Cu�l es el evento m�s colosal del universo?</h3>
                <label>
                    <input type="radio" value="1" name="p10" onclick="respuesta(10, this)">Bomba At�mica
                </label>
                <label>
                    <input type="radio" value="2" name="p10" onclick="respuesta(10, this)">Llamarada solar
                </label>
                <label>
                    <input type="radio" value="3" name="p10" onclick="respuesta(10, this)">Supernova
                </label>
            </section>

            <section id="p11">
                <h3>12. En tama�o, cu�l de los siguientes cuerpos celestes es m�s brillante.</h3>
                <label>
                    <input type="radio" value="1" name="p11" onclick="respuesta(11, this)">Estrella Supermasiva
                </label>
                <label>
                    <input type="radio" value="2" name="p11" onclick="respuesta(11, this)">Agujero Negro
                </label>
                <label>
                    <input type="radio" value="3" name="p11" onclick="respuesta(11, this)">Cu�sar
                </label>
            </section>

            <section id="p12">
                <h3>13. �Qu� son las constelaciones?</h3>
                <label>
                    <input type="radio" value="1" name="p12" onclick="respuesta(12, this)">Conjuntos de estrellas que formas una figura
                </label>
                <label>
                    <input type="radio" value="2" name="p12" onclick="respuesta(12, this)">S�mbolos conformados por cuerpos celestes
                </label>
                <label>
                    <input type="radio" value="3" name="p12" onclick="respuesta(12, this)">Conjuntos de estrellas que forman un sistema
                </label>
            </section>

            <section id="p13">
                <h3>14. �Qu� estrellas componen el cintur�n de ori�n?</h3>
                <label>
                    <input type="radio" value="1" name="p13" onclick="respuesta(13, this)">UY Scuti, Mintaka, Arcturus
                </label>
                <label>
                    <input type="radio" value="2" name="p13" onclick="respuesta(13, this)">Alnitak, Alnilam, y Mintaka
                </label>
                <label>
                    <input type="radio" value="3" name="p13" onclick="respuesta(13, this)">Alnitak, VY Canis mayoris, Mintaka
                </label>
            </section>

            <section id="p14">
                <h3>15. �A cu�nto equivale un Parsec?</h3>
                <label>
                    <input type="radio" value="1" name="p14" onclick="respuesta(14, this)">2.34 A�os luz
                </label>
                <label>
                    <input type="radio" value="2" name="p14" onclick="respuesta(14, this)">3.26 A�os luz
                </label>
                <label>
                    <input type="radio" value="3" name="p14" onclick="respuesta(14, this)">20 U.A
                </label>
            </section>

            <section id="p15">
                <h3>16. �C�mo se llama la estrella mas brillante en el cielo? (Pista: Se encuentra en la constelaci�n de Can Mayor)</h3>
                <label>
                    <input type="radio" value="1" name="p15" onclick="respuesta(15, this)">VY Canis Mayoris
                </label>
                <label>
                    <input type="radio" value="2" name="p15" onclick="respuesta(15, this)">Stephenson 218
                </label>
                <label>
                    <input type="radio" value="3" name="p15" onclick="respuesta(15, this)">Sirio
                </label>
            </section>

            <section id="p16">
                <h3>17. Elige correctamente la representaci�n de medici�n sencilla correcta para �ngulos</h3>
                <label>
                    <input type="radio" value="1" name="p16" onclick="respuesta(16, this)">Pulgar: 2 grados
                    Pu�o: 10 grados
                    Mano Abierta: 20 grados
                </label>
                <label>
                    <input type="radio" value="2" name="p16" onclick="respuesta(16, this)">Pulgar: 1 grados
                    Pu�o: 8 grados
                    Mano Abierta: 30 grados
                </label>
                <label>
                    <input type="radio" value="3" name="p16" onclick="respuesta(16, this)">Pulgar: 5 grados
                    Pu�o: 10 grados
                    Mano Abierta: 20 grados
                </label>
            </section>

            <button onclick="corregir()">ENVIAR</button>

        </div>
        <%!
            BD base = new BD();
            int[] correctas = {1, 2, 2, 2, 3, 2, 1, 2, 1, 2, 3, 3, 1, 2, 2, 3, 1};
            int[] opcion_elegida;

            public void respuesta(int num_pregunta, int seleccionada) {

                opcion_elegida[num_pregunta] = seleccionada;

                String id = "p" + num_pregunta;
            }
        %>
        <%!
            public int corregir() {
                int cantidad_correctas = 0;
                for (int i = 0; i < correctas.length; i++) {
                    if (correctas[i] == opcion_elegida[i]) {
                        cantidad_correctas++;
                    }
                }
                return cantidad_correctas;
                //int aciertos = Integer.parseInt(request.getParameter("resultado"));;
            }


        %>
        <%=corregir()%>
    </body>
</html>
