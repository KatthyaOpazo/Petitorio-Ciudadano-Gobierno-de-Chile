/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cl.inacap.web;

import cl.inacap.modelo.Peticion;
import cl.inacap.modelo.Usuario;
import java.util.ArrayList;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/**
 * Web application lifecycle listener.
 *
 * @author anais
 */
public class Listado implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        //Lista de Usuario
        ArrayList<Usuario> listaUsers = new ArrayList();
        
        //Lista de Peticiones
        ArrayList<Peticion> listaPeticiones = new ArrayList();
        
       
        // Se define un atributo en el contexto de la aplicación.
        sce.getServletContext().setAttribute("lstUsers",listaUsers);
        sce.getServletContext().setAttribute("lstPeticiones",listaPeticiones);
        
    }
    
    
    

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        
    }
}
