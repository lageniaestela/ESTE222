<!DOCTYPE html>
   <html lang="en">
   <head>
       <meta charset="UTF-8">
       <title>TRABAJO PRACTICO HTML EMEBEBIDO</title>
   </head>
   <body>
   <%@ page language="java" %>
   <%@ page import = "codoacodobase.ConnectionCreator"%>
   <%@ page import = "java.sql.Connection"%>
   <%
       Connection miConexion = ConnectionCreator.getSqlServerConnection("Persona", "127.0.0.1",root,"", "");

       if (!miConexion.isClosed())
         out.print("FUNCIONA !");
      <section>
      <h1> ingreso de Datos </h1>
      <!--JPS-->
      <form method="post" action="<% =request.getContextPath()%>/Controller">
      <div class="mb-3">
      <label for="exampleFormControlTexttarea1" class="form-label">Nombre</label>
      <input name="apellido" type="text" class="form-control" id="exampleFormControlTexttarea1">
      <label for="exampleFormControlTexttarea1" class="form-label">Apellido</label>
      <input name="apellido" type="text" class="form-control" id="exampleFormControlTexttarea1">
      <label for="exampleFormControlTexttarea1" class="form-label">DNI</label>
      <input name="dni" type="number" class="form-control" id="exampleFormControlTexttarea1">
       <button class="btn btn-primary"> Ingreso </button>
       </div>
       </form>

      miConexion.close(); /* no olvidarse de cerrar las conexiones. */

   %>



</body>
</html>