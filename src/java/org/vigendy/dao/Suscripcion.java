package org.vigendy.dao;

import java.io.Serializable;

public class Suscripcion implements Serializable{
    
    private Integer idSus;
    private String tipoSus;

    public Suscripcion() {
    }

    public Integer getIdSus() {
        return idSus;
    }

    public void setIdSus(Integer idSus) {
        this.idSus = idSus;
    }

    public String getTipoSus() {
        return tipoSus;
    }

    public void setTipoSus(String tipoSus) {
        this.tipoSus = tipoSus;
    }   
}