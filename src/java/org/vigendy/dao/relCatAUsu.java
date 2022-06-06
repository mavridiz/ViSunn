package org.vigendy.dao;

import java.io.Serializable;

public class relCatAUsu implements Serializable{
    
    private Integer idrelCatAUsu;
    private Usuario idUsu;
    private catAct idAct;

    public relCatAUsu(Usuario idUsu, catAct idAct) {
        this.idUsu = idUsu;
        this.idAct = idAct;
    }

    public Integer getIdrelCatAUsu() {
        return idrelCatAUsu;
    }

    public void setIdrelCatAUsu(Integer idrelCatAUsu) {
        this.idrelCatAUsu = idrelCatAUsu;
    }

    public Usuario getIdUsu() {
        return idUsu;
    }

    public void setIdUsu(Usuario idUsu) {
        this.idUsu = idUsu;
    }

    public catAct getIdAct() {
        return idAct;
    }

    public void setIdAct(catAct idAct) {
        this.idAct = idAct;
    }   
}