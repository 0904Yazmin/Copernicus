<%@page import="Conexion.BD"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.ResultSet"%>
<%
    HttpSession miSessiondelUsuario = (HttpSession) request.getSession();

    int idPersona = (int) (miSessiondelUsuario.getAttribute("id_docen") == null ? 0 : miSessiondelUsuario.getAttribute("id_docen"));
    if (idPersona < 1) {
        response.sendRedirect("../jsp/Menu.jsp");
    }
    String nombre = "";
    String correo = "";
    String foto = "";
    String tipo = "";
    String grado = "";

    BD basesita = new BD();
    basesita.conectar();

    String datitos = "Select * from Usuario_Clase where id_usuario = '" + idPersona + "'"; // seleccionamos los datos de la clase de la tabla Usuario_Clase
    ResultSet Datos = basesita.consulta(datitos);
    String UsuarioInfo = "Select * from Docente where id_docen = '" + idPersona + "'"; //selecionamos los datos del usuario de la tabla Estudiante
    ResultSet rsDatosPer = basesita.consulta(UsuarioInfo);
    if (rsDatosPer.next()) {
        nombre = rsDatosPer.getString(2);
        correo = rsDatosPer.getString(3);
        foto = rsDatosPer.getString(5);
        tipo = rsDatosPer.getString(6);
    }

    while (Datos.next()) {
        int id_class = Datos.getInt(2); // obtenemos la id de la clase (de la tabla Usuario_Clase) para relacionarla con la tabla Clases
        String info_clase = "Select * from Clases where id_clase = '" + id_class + "'"; // seleccionamos los datos de la tabla Clases
        ResultSet ClaseInfo = basesita.consulta(info_clase);
        if (ClaseInfo.next()) {

        }


%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="../css_D/foro.css" >
        <link rel="shorcut icon" href="../../General/img/logos/Newlogo.png">
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');
        </style>
    </head>
    <body id="crearP">
        <div class="div_1">

            <div class="infoClase">
                <aside class="card">
                    <h1>Nombre de la clasesita de muestra</h1>
                    <div class="clip"><div style="display: flex; color: white;"> <p>Grado de la clase: </p></div></div>
                </aside>
            </div>

            <nav id="indice">
                <center><h1>Crear publicación</h1></center>
                <form name="crearPost" action="infoForo.jsp" method="post" > 
                    <table class="tablita" border="0">
                        <tr>
                            <td>
                                <textarea cols="75" rows="5" name="textoPost" id="textoPost" class="info textArea" placeholder="Escribe lo que quieras" required></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input id="fileImg" type="file" name="fileImg"  class="fileImg" accept="image/*" >
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input  style="margin-right:35px;" type="reset" class="botoncitos">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input class="botoncitos" type="submit" id="btn" name="btnPublicar" onclick="valida()" value="Publicar">
                                <input type="hidden"  id="current_date" name="current_date" value="">
                            </td>
                        </tr>
                    </table>
                </form>
            </nav>
        </div>
        <%            }

            Datos.close();

            basesita.cierraConexion();
        %>

        <script>
            document.getElementById("current_date").innerHTML = var fecha;
            fecha = Date();
            function validaVacio() {
                var textoPost = document.getElementById("textoPost").value;
                var file = document.getElementById("fileImg").value;

                if (textoPost === "" && file === "") {
                    alert("No dejes los campos vacios");
                    return false;
                }
            }
            function valida() {
                // Ninguno campo vacìo
                if (!validaVacio())
                    return false;
                // Contraseña coinicide

                document.prof.submit();
            }

        </script>
    </body>
</html>
