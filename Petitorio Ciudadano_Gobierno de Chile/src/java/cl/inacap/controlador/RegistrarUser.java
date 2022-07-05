/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cl.inacap.controlador;

import cl.inacap.modelo.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author anais
 */
@WebServlet(name = "RegistrarUser", urlPatterns = {"/login.do","/registro.do"})
public class RegistrarUser extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet RegistrarUser</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RegistrarUser at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //Obtener los parámetros desde la petición.
        String user = request.getParameter("txtuser");
        String pass = request.getParameter("txtpass");
        //Validaciones básicas.
        String errores = "";
        if (user.isEmpty()) {
            errores = "Debes ingresar el usuario.<br />";
        }
        if (pass.isEmpty()) {
            errores += "Debes ingresar la password.<br />";
        }
        //Verificar si hubo errores.
        if (errores.isEmpty()) {

            ArrayList<Usuario> listaUsuarios = (ArrayList) this.getServletContext().getAttribute("lstUsers");
            //Validar si el usuario y password están correctos
            Usuario usuarioValido = null;
            for (Usuario usuario : listaUsuarios) {
                if (usuario.getUsuario().equals(user) && usuario.getPass().equals(pass)) {
                    usuarioValido = usuario;
                    this.log("Usuario Válido." + usuario.getNombre());
                    break;
                }
            }
            //Verificar si el usuarioValido es nulo.
            if (usuarioValido != null) {
                //Generar una sesión para el usuario.
                request.getSession().setAttribute("usuario", usuarioValido);
                //Se le da acceso al registo de peticion 
                request.setAttribute("Usuario", user);
                request.setAttribute("Password", pass);
                request.getRequestDispatcher("peticion.jsp").forward(request, response);
            } else {
                //Se deriva el mensaje de NOOK para el usuario y/o la password.
                request.setAttribute("msgNOK", "Usuario y/o Password inválidos");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
        } else { //Se omitiron datos en el ingreso.
            request.setAttribute("msgNOK", errores);
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //Obtener los parámetros desde la petición.
        String nombre = request.getParameter("txtnombre");
        String rut = request.getParameter("txtrut");
        String edad = request.getParameter("txtedad");
        String correo = request.getParameter("txtcorreo");
        String usuario = request.getParameter("txtuser");
        String pass = request.getParameter("txtpass");
        //Validaciones básicas.
        String errores = "";
        
        if (nombre.isEmpty()) {
            errores = "Debe ingresar su nombre.<br />";
        }
        if (rut.isEmpty()) {
            errores += "Debe ingresar su rut.<br />";
        }
        
        if (correo.isEmpty()) {
            errores += "Debe ingresar su correo.<br />";
        }
        if (usuario.isEmpty()) {
            errores += "Debe ingresar su usuario.<br />";
        }
        if (pass.isEmpty()) {
            errores += "Debe ingresar su contraseña.<br />";
        }
        
        edad.toLowerCase();
        if (edad.matches("[a-zA-Z]+") || edad.length()>2) {
            errores += "Debe ingresar una edad valida.<br />";
        }
        
        //Verificar si hubo errores.
        if (errores.isEmpty()) {
            //Se recupera desde "la nube" la lista de usuarios.
            ArrayList<Usuario> listaUsuarios = (ArrayList) this.getServletContext().getAttribute("lstUsers");
            //Encapsular los datos del usuario en un objeto del modelo.
            Usuario user  = new Usuario (nombre, rut, edad, correo, usuario, pass);
            //Se agrega el objeto a la lista de usuarios.
            if (listaUsuarios.add(user)) {
                //Se devuelve a "la nube" la lista con el nuevo usuario incorporado.
                this.getServletContext().setAttribute("lstUsers", listaUsuarios);
                //Se deriva el mensaje de OK
                request.setAttribute("msgOK", "Usuario registrado correctamente");
            } else {
                request.setAttribute("msgNOK", "Error en el registro del Usuario");
            }
        } else { //Se omitiron datos en el ingreso.
            request.setAttribute("msgNOK", errores);
        }
        request.getRequestDispatcher("registro.jsp").forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
