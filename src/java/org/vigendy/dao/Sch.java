package org.vigendy.dao;

import java.io.Serializable;

public class Sch implements Serializable{
    
    private Integer idSch;
    private Usuario idUsu;
    private catDia idDia;

    public Sch(Usuario idUsu, catDia idDia) {
        this.idUsu = idUsu;
        this.idDia = idDia;
    }

    public Integer getIdSch() {
        return idSch;
    }

    public void setIdSch(Integer idSch) {
        this.idSch = idSch;
    }

    public Usuario getIdUsu() {
        return idUsu;
    }

    public void setIdUsu(Usuario idUsu) {
        this.idUsu = idUsu;
    }

    public catDia getIdDia() {
        return idDia;
    }

    public void setIdDia(catDia idDia) {
        this.idDia = idDia;
    }   
}