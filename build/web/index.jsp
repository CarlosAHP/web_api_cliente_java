<%-- 
    Document   : index
    Created on : 14 oct 2022, 13:57:26
    Author     : Carlos Alfonso
--%>

<%@page import="javax.swing.table.DefaultTableModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="apis.api_cliente"%>
<!DOCTYPE html>
<html>
    <head>
     <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">    
    
    
    </head>
    <body>
        <h1>Hello World!</h1>
        <table class="table table-striped">
    <thead>
      <tr>
        <th>Nit</th>
        <th>Nombres</th>
        <th>Apellidos</th>
        <th>Direccion</th>
        <th>Telefono</th>
        <th>Nacimiento</th>
      </tr>
    </thead>
    <tbody>
        <% 
        api_cliente api_c =  new api_cliente();
        DefaultTableModel tabla = new DefaultTableModel();
        tabla = api_c.leer();
        for (int t=0;t<tabla.getRowCount();t++){
            out.println("<tr data-id="+ tabla.getValueAt(t, 0) + ">");
            out.println("<td>"+ tabla.getValueAt(t, 1) +"</td>");
            out.println("<td>"+ tabla.getValueAt(t, 2) +"</td>");
            out.println("<td>"+ tabla.getValueAt(t, 3) +"</td>");
            out.println("<td>"+ tabla.getValueAt(t, 4) +"</td>");
            out.println("<td>"+ tabla.getValueAt(t, 5) +"</td>");
            out.println("<td>"+ tabla.getValueAt(t, 6) +"</td>");
            out.println("</tr>");
        
        }
        
        %>
    </tbody>
  </table>


      
      <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>
    
        </body>
</html>