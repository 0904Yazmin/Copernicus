<%@page import="Conexion.BD"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.ResultSet"%>
<%
    HttpSession miSessiondelUsuario = (HttpSession) request.getSession();

    int idPersona = (int) (miSessiondelUsuario.getAttribute("id_usuario") == null ? 0 : miSessiondelUsuario.getAttribute("id_usuario"));
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
    String UsuarioInfo = "Select * from Estudiante where id_usuario = '" + idPersona + "'"; //selecionamos los datos del usuario de la tabla Estudiante
    ResultSet rsDatosPer = basesita.consulta(UsuarioInfo);
    if (rsDatosPer.next()) {
        nombre = rsDatosPer.getString(2);
        correo = rsDatosPer.getString(3);
        foto = rsDatosPer.getString(5);
        tipo = rsDatosPer.getString(6);
        grado = rsDatosPer.getString(7);
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
        <link rel="stylesheet" href="../css_A/menu_A.css" >
        <link rel="stylesheet" href="../../General/css/foro_estilitos.css" >
        <link rel="shorcut icon" href="../../General/img/logos/Newlogo.png">
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');
        </style>
    </head>
    <body id="crearP">
        <div class="div_1">
            <div class="infoClase">
                <table>
                    <tr>
                        <td><h2>Nombre de la clase:</h2></td>
                    </tr>
                    <tr>
                        <td><%=ClaseInfo.getString(2)%></td>
                    </tr>
                    <tr>
                        <td><h2>Grado de la clase:</h2></td>
                    </tr>
                    <tr>
                        <td><%=ClaseInfo.getString(3)%></td>
                    </tr>
                </table>
            </div>


            <nav class="indice">
                <h1>Crear publicación</h1>
                <form name="crearPost" action="infoForo.jsp" method="post" > 
                    <table class="tablita" border="0">
                        <tr>
                            <td>
                                <textarea cols="75" rows="5" name="textoPost" id="textoPost" class="info textArea" placeholder="Escribe lo que quieras"></textarea>
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
                                <input class="botoncitos" type="submit" id="btnPublicar" name="btnPublicar" value="Publicar">
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
    </body>
</html>
