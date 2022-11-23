<%@page import="java.sql.ResultSet"%>
<%@page import="java.io.File"%>
<%@page import="Conexion.BD"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.DataInputStream"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%
            HttpSession miSessiondelUsuario = (HttpSession) request.getSession();
            int id = (int) (miSessiondelUsuario.getAttribute("id_docen") == null ? 0 : miSessiondelUsuario.getAttribute("id_docen"));
            BD base = new BD();
            base.conectar();
            // Parametros del form CrearPost
            String texto = request.getParameter("textoPost");
            String img = request.getParameter("fileImg");
            String date = request.getParameter("current_date");
            String nombre = "";
            String foto = "";

            String UsuarioInfo = "";
            if (!texto.equals("") && !img.equals("")) {

                int MAX_SIZE = 602440 * 60244000;
                String rootPath;
                DataInputStream in = null;
                FileOutputStream fileOut = null;
                String remoteAddr = request.getRemoteAddr();
                String serverName = request.getServerName();
                String realPath = "D:\\Copernicus\\Tuna_Tech\\web\\General\\Usu_img\\fotosForo\\";
                rootPath = realPath;
                String contentType = request.getContentType();
                String saveFile = "";

                try {
                    if (contentType.indexOf("multipart/form-data") >= 0) {
                        in = new DataInputStream(request.getInputStream());
                        int formDataLength = request.getContentLength();
                        if (formDataLength > MAX_SIZE) {
                            out.println("<p> El archivo de carga máxima no puede exceder " + MAX_SIZE + "</p>");
                            return;
                        }
                        byte dataBytes[] = new byte[formDataLength];
                        int byteRead = 0;
                        int totalBytesRead = 0;
                        while (totalBytesRead < formDataLength) {
                            byteRead = in.read(dataBytes, totalBytesRead, formDataLength);
                            totalBytesRead += byteRead;
                        }
                        String file = new String(dataBytes, "UTF-8");
                        saveFile = file.substring(file.indexOf("filename=\"") + 10);
                        saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
                        saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1, saveFile.indexOf("\""));
                        int lastIndex = contentType.lastIndexOf("=");
                        String boundary = contentType.substring(lastIndex + 1, contentType.length());

                        String fileName = rootPath + saveFile;
                        int pos;
                        pos = file.indexOf("filename=\"");
                        pos = file.indexOf("\n", pos) + 1;
                        pos = file.indexOf("\n", pos) + 1;
                        pos = file.indexOf("\n", pos) + 1;
                        int boundaryLocation = file.indexOf(boundary, pos) - 4;

                        int startPos = ((file.substring(0, pos)).getBytes()).length;
                        int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;

                        File fileDir = new File(rootPath);
                        if (!fileDir.exists()) {
                            fileDir.mkdir();
                        }
                        fileOut = new FileOutputStream(fileName);
                        fileOut.write(dataBytes, startPos, (endPos - startPos));
                        fileOut.close();

                    } else {
                        String content = request.getContentType();
                        out.println("<p> El tipo de dato cargado no es multipart / form-data </p>");
                    }
                } catch (Exception ex) {
                    throw new ServletException(ex.getMessage());
                }
                //  --------------------------------------------------------------------------------- INSERTAR ------------------------------------
                try {
                    UsuarioInfo = "Select * from Docente where id_docen = '" + id + "'"; //selecionamos los datos del usuario de la tabla Estudiante
                    ResultSet rsDatosPer = base.consulta(UsuarioInfo);
                    String datitos = "Select * from Usuario_Clase where id_usuario = '" + id + "'"; // seleccionamos los datos de la clase de la tabla Usuario_Clase
                    ResultSet Datos = base.consulta(datitos);
                    // obtenemos la id de la clase (de la tabla Usuario_Clase) para relacionarla con la tabla Clases
                    //String info_clase = "Select * from Clases where id_clase = '" + id_class + "'"; // seleccionamos los datos de la tabla Clases
                    //ResultSet ClaseInfo = base.consulta(info_clase);
                    /**
                     * if (ClaseInfo.next()) { int id_class = Datos.getInt(2);
                     * // obtenemos la id del foro (de la tabla Usuario_Clase)
                     * para relacionarla con la tabla Clases }
                     */
                    if (rsDatosPer.next()) {
                        while (Datos.next()) {
                            int id_class = Datos.getInt(2);
                            nombre = rsDatosPer.getString(2);
                            foto = rsDatosPer.getString(5);
                            String dato = "insert into Post(autor_post, msj, id_docen, id_foro, img_autor, hora_post)" + "values( '" + nombre + "','" + texto + "','" + id + "','" + id_class + "','" + foto +  "','" + date + "' )";
                            int resultadoEdita = base.insertar(dato);

                            String str = "update Post set img_post='" + saveFile + "', img_autor='" + foto + "' where id_usuario='" + id + "'";
                            int actualizacion = base.edita(str);

                            if (resultadoEdita == 3 && actualizacion == 1) {
        %>
        <script>
            window.alert("Se ha publicado tu post");
        </script>

        <%
                        }
                    }
                }
            } catch (Exception XD) {

            }

        } else {
            if (!texto.equals("") && img.equals("")) {
                try {
                    UsuarioInfo = "Select * from Estudiante where id_usuario = '" + id + "'"; //selecionamos los datos del usuario de la tabla Estudiante
                    ResultSet rsDatosPer = base.consulta(UsuarioInfo);
                    String datitos = "Select * from Usuario_Clase where id_usuario = '" + id + "'"; // seleccionamos los datos de la clase de la tabla Usuario_Clase
                    ResultSet Datos = base.consulta(datitos);
                    // obtenemos la id de la clase (de la tabla Usuario_Clase) para relacionarla con la tabla Clases
                    //String info_clase = "Select * from Clases where id_clase = '" + id_class + "'"; // seleccionamos los datos de la tabla Clases
                    //ResultSet ClaseInfo = base.consulta(info_clase);
                    /**
                     * if (ClaseInfo.next()) { int id_class = Datos.getInt(2);
                     * // obtenemos la id del foro (de la tabla Usuario_Clase)
                     * para relacionarla con la tabla Clases }
                     */
                    if (rsDatosPer.next()) {
                        while (Datos.next()) {
                            int id_class = Datos.getInt(2);
                            nombre = rsDatosPer.getString(2);
                            foto = rsDatosPer.getString(5);
                            String dato = "insert into Post(autor_post, msj, id_usuario, id_foro, img_autor, hora_post)" + "values( '" + nombre + "','" + texto + "','" + id + "','" + id_class + "','" + foto +  "','" + date + "' )";
                            int resultadoEdita = base.insertar(dato);
                            String str = "update Post set img_autor='" + foto + "' where id_usuario='" + id + "'";
                            int actualizacion = base.edita(str);

                            if (resultadoEdita == 1) {
        %>
        <script>
            window.alert("Se ha publicado tu post :D");
        </script>

        <%
                                }
                            }
                        }
                    } catch (Exception XD) {

                    }
                }
            }
        %>

    </body>
</html>
