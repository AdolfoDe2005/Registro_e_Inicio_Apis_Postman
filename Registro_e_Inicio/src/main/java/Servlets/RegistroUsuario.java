package Servlets;

import Conexión.ConexiónDB;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RegistroUsuario")
public class RegistroUsuario extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("RegistroUsuario.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String Nombre = request.getParameter("Nombre");
        String Clave = request.getParameter("Clave");
        
        if (Nombre == null || Nombre.trim().isEmpty() || Clave == null || Clave.trim().isEmpty()) {
        request.setAttribute("error", "Todos los campos son obligatorios.");
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("Mensaje_Error.jsp");
        dispatcher.forward(request, response);
        return;
    }

        try (Connection con = ConexiónDB.getConnection()) {
            String query = "INSERT INTO Entrar (Nombre, Clave) VALUES (?, ?)";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, Nombre);
            ps.setString(2, Clave);
            ps.executeUpdate();

            request.setAttribute("mensaje", "Usuario " + Nombre + " registrado con éxito.");
            
            RequestDispatcher dispatcher = request.getRequestDispatcher("Mensaje_Exitoso.jsp");
            dispatcher.forward(request, response);
            
        } catch (Exception e) {
     
            RequestDispatcher dispatcher = request.getRequestDispatcher("Mensaje_Error.jsp");
            dispatcher.forward(request, response);
        }
    }
}

