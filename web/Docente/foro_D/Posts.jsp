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
    BD basesita = new BD();
    basesita.conectar();

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Posts</title>
        <link rel="stylesheet" href="../css_D/menu_D.css" >
        <link rel="stylesheet" href="../css_D/foro_style.css" >
        <link rel="shorcut icon" href="../../General/img/logos/Newlogo.png">
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');
        </style>
    </head>
    <body style="background-color:  #17191A; ">

        <main id="blog">
            <div class="contenedor">
                <aside>
                    <iframe id="FRAME" src="crearPost.jsp" width="420" height="420" style="border:none; z-index: 100; " scrolling="no" ></iframe>
                </aside>

                <div class="contenido">
                    <%                 try {
                            int id_foro = Integer.parseInt(request.getParameter("id_clase"));
                            String strQry = "select * from Post where id_foro='" + id_foro + "'";
                            ResultSet rs = null;
                            rs = basesita.consulta(strQry);

                            while (rs.next()) {
                                nombre = rs.getString(2);
                                nombre = rs.getString(2);
                                nombre = rs.getString(2);
                                nombre = rs.getString(2);
                    %>
                    <div class="post">
                        <div class="infoPost">
                            <%
                                if (rs.getString(8) == null) {
                            %>
                            <div class="headerPost">
                                <table>
                                    <tr>
                                        <td><img src="../../General/img/fotoUsu_0.png" width="30" height="20" alt="foto 0" class="imagenUsuCero"/></td>
                                        <td> <h1 class="titulo"><%=rs.getString(2)%></h1></td>
                                    </tr>
                                </table>
                            </div>
                            <div class="headerPost">
                                <%=rs.getString(9)%>
                            </div>

                            <%
                            } else {

                            %>
                            <div class="headerPost">
                                <table>
                                    <tr>
                                        <td><img class="imagenUsuCero" src="../../General/Usu_img/fotosPerfil/<%=rs.getString(8)%>" width="130" height="130"></td>
                                        <td><h1 class="titulo"><%=rs.getString(2)%></h1></td>
                                    </tr>
                                </table>
                            </div>
                            <div class="headerPost">
                                <%=rs.getString(9)%>
                            </div>
                            <%
                                }
                            %>
                        </div>
                        <div class="textoPost">
                            <p>
                                <%=rs.getString(3)%>
                            </p>
                        </div>

                        <form name="form" action="ValidarUsu.jsp" method="post" > 
                            <h3 style="margin-top: 10px;">Comentarios</h3>
                            <div style=" display: flex; ">
                                <input class="postInput" type="text" id="TxtComent" name="comentario" placeholder="Escribe un comentario">
                                <input class="enviarComent" type="submit" id="btnComent" name="btnComent" value="Comentar">
                            </div>
                        </form>


                    </div>
                    <%
                            }
                            rs.close();
                            basesita.cierraConexion();
                        } catch (Exception ex) {
                            out.print(ex.getMessage());
                        }
                    %>
                </div>
            </div>
        </main>

    </body> 
</html >
