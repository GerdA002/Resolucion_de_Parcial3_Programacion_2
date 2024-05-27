package org.parcial3.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.parcial3.modelo.Cliente;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;


@WebServlet("/CrearFacturaServlet")
public class CrearFacturaServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        Date fechaEmison = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
        String fechaEmisionFormateada= formatter.format(fechaEmison);

        request.setAttribute("fecha_emision", fechaEmisionFormateada);
        request.getRequestDispatcher("CrearFactura.jsp").forward(request, response);
        response.sendRedirect("index.jsp");

    }

    protected  void doPost(HttpServletRequest request,HttpServletResponse response)
        throws ServletException, IOException {
        String nombre = request.getParameter("nombre");
        String nrc = request.getParameter("nrc");;
        String descripcion = request.getParameter("descripcion");
        String[] nombresProductos=request.getParameterValues("nombresProductos");
        String[] preciosProductos=request.getParameterValues("preciosProductos");
        String[] cantidadeProductos=request.getParameterValues("cantidadeProductos");

        request.setAttribute("nombre", nombre);
        request.setAttribute("nrc", nrc);
        request.setAttribute("descripcion", descripcion);
        request.setAttribute("nombresProductos", nombresProductos);
        request.setAttribute("preciosProductos", preciosProductos);
        request.setAttribute("cantidadeProductos", cantidadeProductos);



        request.getRequestDispatcher("MostrarFactura.jsp").forward(request, response);



    }
}
