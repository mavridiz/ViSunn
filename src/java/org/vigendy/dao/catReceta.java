package org.vigendy.dao;

import java.io.Serializable;

public class catReceta implements Serializable{
    
    private Integer idReceta;
    private String receta;

    public catReceta() {
    }

    public Integer getIdReceta() {
        return idReceta;
    }

    public void setIdReceta(Integer idReceta) {
        this.idReceta = idReceta;
    }

    public String getReceta() {
        return receta;
    }

    public void setReceta(String receta) {
        this.receta = receta;
    }   
}