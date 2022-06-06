package org.vigendy.dao;

import java.io.Serializable;

public class relActDia implements Serializable{
    
    private Integer idRelActDia;
    private relCatAUsu idrelCatAUsu;
    private catDia idDia;

    public relActDia(relCatAUsu idrelCatAUsu, catDia idDia) {
        this.idrelCatAUsu = idrelCatAUsu;
        this.idDia = idDia;
    }

    public Integer getIdRelActDia() {
        return idRelActDia;
    }

    public void setIdRelActDia(Integer idRelActDia) {
        this.idRelActDia = idRelActDia;
    }

    public relCatAUsu getIdrelCatAUsu() {
        return idrelCatAUsu;
    }

    public void setIdrelCatAUsu(relCatAUsu idrelCatAUsu) {
        this.idrelCatAUsu = idrelCatAUsu;
    }

    public catDia getIdDia() {
        return idDia;
    }

    public void setIdDia(catDia idDia) {
        this.idDia = idDia;
    }
}