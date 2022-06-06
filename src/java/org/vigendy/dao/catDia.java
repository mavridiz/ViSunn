package org.vigendy.dao;

import java.io.Serializable;

public class catDia implements Serializable{
    
    private Integer idDia;
    private String dia;

    public catDia() {
    }

    public Integer getIdDia() {
        return idDia;
    }

    public void setIdDia(Integer idDia) {
        this.idDia = idDia;
    }

    public String getDia() {
        return dia;
    }

    public void setDia(String dia) {
        this.dia = dia;
    }   
}