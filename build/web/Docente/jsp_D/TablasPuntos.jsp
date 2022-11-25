<%@page import="java.sql.ResultSet"%>
<%@page import="Conexion.BD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    HttpSession miSessiondelUsuario = (HttpSession) request.getSession();

    int idPersona = (int) (miSessiondelUsuario.getAttribute("id_docen") == null ? 0 : miSessiondelUsuario.getAttribute("id_docen"));
    if (idPersona < 1) {
        response.sendRedirect("../jsp/Menu.jsp");
    }
    String nombre = "";
    String foto = "";
    String tipo = "";
    String grado = "";
    String id_student;

    String textoPost = "";
    BD basesita = new BD();
    basesita.conectar();

    try {
        int id_foro = Integer.parseInt(request.getParameter("id_clase"));
        String strQry = "select * from Clases where id_clase=' " + id_foro + " ' ";
        ResultSet rs = null;
        rs = basesita.consulta(strQry);
        while (rs.next()) {
            grado = rs.getString(3);
            String data = "select *  from Usuario_Clase where id_clase=' " + id_foro + " '";
            ResultSet data2 = basesita.consulta(data);
            while (data2.next()) {
                id_student = rs.getString(1);
                String userEs = "select * from Estudiante where id_usuario=' " + id_student + " ' ";
                ResultSet users = basesita.consulta(userEs);
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Posts</title>
        <link rel="stylesheet" href="../css_D/menu_D.css" >
        <link rel="stylesheet" href="../css_D/tablasPuntos.css" >
        <link rel="shorcut icon" href="../../General/img/logos/Newlogo.png">
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');
        </style>
    </head>

    <body style="background-color:  #17191A; ">

        <div id="publicaciones">
            <div id="tituloForo">
                <p><h1>Calificaciones de la clase</h1>
            </div>
            <div id="post">
                <div>
                    <table id="tablaInfo" border="1">
                        <tr>
                            <th></th>
                            <th>Nombre del alumno</th>
                            <th>Ejercicio 1</th>
                            <th>Ejercicio 2</th>
                            <th>Ejercicio 3</th>
                            <th>Ejercicio 4</th>
                            <th>Grado</th>
                        </tr>
                        <%
                            while (users.next()) {
                                nombre = rs.getString(2);
                                foto = rs.getString(8);
                                textoPost = rs.getString(3);
                                tipo = rs.getString(9);

                        %>
                        <tr>
                            <%                                if (rs.getString(9) == null) {
                            %>
                            <td ><img src="../../General/Usu_img/fotosPerfil/fotoUsu_0.png" width="50" height="50" alt="foto 0" id="imagenUsuCero" style="margin-right: -20px;"/></td>

                            <%
                            } else {

                            %>
                            <td rowspan="2"><img class="imagenUsuCero" src="../../General/Usu_img/fotosPerfil/<%=foto%>" style="margin-right: -20px; border-radius: 100px;"  width="60" height="60"></td>
                                <%                                }
                                %>
                            <td><h1><%=nombre%></h1></td>
                            <td style="text-align: right;"><%=tipo%></td> 
                        </tr>

                    </table>
                </div>


                <%                    }

                                rs.close();
                            }
                        }
                        basesita.cierraConexion();
                    } catch (Exception ex) {
                        out.print(ex.getMessage());
                    }


                %>

            </div>

    </body> 
</html>
