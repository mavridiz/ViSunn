package org.vigendy.dao;

import java.io.Serializable;

public class Dieta implements Serializable{
    
    private Integer idDieta;
    private catReceta idReceta;
    private relCatRUsu idCatUsu;

    public Dieta(catReceta idReceta, relCatRUsu idCatUsu) {
        this.idReceta = idReceta;
        this.idCatUsu = idCatUsu;
    }

    public Integer getIdDieta() {
        return idDieta;
    }

    public void setIdDieta(Integer idDieta) {
        this.idDieta = idDieta;
    }

    public catReceta getIdReceta() {
        return idReceta;
    }

    public void setIdReceta(catReceta idReceta) {
        this.idReceta = idReceta;
    }

    public relCatRUsu getIdCatUsu() {
        return idCatUsu;
    }

    public void setIdCatUsu(relCatRUsu idCatUsu) {
        this.idCatUsu = idCatUsu;
    }
}