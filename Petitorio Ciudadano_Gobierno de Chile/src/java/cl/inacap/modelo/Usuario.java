/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cl.inacap.modelo;

/**
 *
 * @author anais
 */
public class Usuario {
    private String nombre;
    private String rut;
    private String edad;
    private String correo;
    private String usuario;
    private String pass;

    public Usuario() {
    }

    public Usuario(String nombre, String rut, String edad, String correo, String usuario, String pass) {
        this.nombre = nombre;
        this.rut = rut;
        this.edad = edad;
        this.correo = correo;
        this.usuario = usuario;
        this.pass = pass;
    }


    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getRut() {
        return rut;
    }

    public void setRut(String rut) {
        this.rut = rut;
    }

    public String getEdad() {
        return edad;
    }

    public void setEdad(String edad) {
        this.edad = edad;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }
    
    
}

