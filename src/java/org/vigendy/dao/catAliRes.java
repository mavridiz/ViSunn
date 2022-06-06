package org.vigendy.dao;

import java.io.Serializable;

public class catAliRes implements Serializable{
    
    private Integer idAliRes;
    private String Alires;

    public catAliRes() {
    }

    public Integer getIdAliRes() {
        return idAliRes;
    }

    public void setIdAliRes(Integer idAliRes) {
        this.idAliRes = idAliRes;
    }

    public String getAlires() {
        return Alires;
    }

    public void setAlires(String Alires) {
        this.Alires = Alires;
    }    
}