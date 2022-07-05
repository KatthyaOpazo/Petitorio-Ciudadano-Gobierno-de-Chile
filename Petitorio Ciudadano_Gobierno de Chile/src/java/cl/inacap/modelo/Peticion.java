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
public class Peticion {
    private String fecha;
    private String categoria;
    private String peticion;
   

    public Peticion() {
    }

    public Peticion(String fecha, String categoria, String peticion) {
        this.fecha = fecha;
        this.categoria = categoria;
        this.peticion = peticion;
    
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public String getPeticion() {
        return peticion;
    }

    public void setPeticion(String peticion) {
        this.peticion = peticion;
    }
  
    
}
