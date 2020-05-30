<%-- 
    Document   : ecuacion
    Created on : 02-Apr-2019, 18:08:05
    Author     : Charlie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.math.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Ecuacion 2 grado!</h1>
        <h2>Formula General!</h2>
        <form method="post">
            <table>
                <tr>
                    <td>a:</td>
                    <td>b:</td>
                    <td>c:</td>
                </tr>
                <tr>
                    <td><input type="text" name="txtA"/></td>
                    <td><input type="text" name="txtB"/></td>
                    <td><input type="text" name="txtC"/></td>
                </tr>
            </table>
            <br>
            <input type="submit" value="Calculo"/>
            <input type="reset" value="Borrar">
        </form>
    </body>

</html>
<%
    String a1, b1, c1;
    double d;
    double raiz;
    double real, imaginaria;
    double raiz2;
    double real2, imaginaria2;
    a1 = request.getParameter("txtA");
    b1 = request.getParameter("txtB");
    c1 = request.getParameter("txtC");
    
    if (a1 != null && b1 != null && c1 != null) {
        d = (Math.pow(Double.parseDouble(b1), 2) - (4 * Double.parseDouble(a1) * Double.parseDouble(c1))); 
        
        if (d >= 0) {
            raiz = (-Double.parseDouble(b1) + Math.sqrt(d)) / (2 * Double.parseDouble(a1));
            out.println("Raiz 1: " + raiz);
        } else {
            real = Double.parseDouble(b1) / (2 * Double.parseDouble(a1));
            imaginaria = (Math.sqrt(-d)) / (2 * Double.parseDouble(a1));
            out.print("Raiz 1: Real: " + real + " Imaginaria:" + imaginaria);
        }
        
        if (d >= 0) {
            raiz2 = (-Double.parseDouble(b1) - Math.sqrt(d)) / (2 * Double.parseDouble(a1));
            out.print("Raiz 2: " + raiz2);
        } else {
            real2 = Double.parseDouble(b1) / (2 * Double.parseDouble(a1));
            imaginaria2 = (Math.sqrt(-d)) / (2 * Double.parseDouble(a1));
            out.print("Raiz 2: Real: " + real2 + " Imaginaria: " + imaginaria2);
        }
    }
    

%>