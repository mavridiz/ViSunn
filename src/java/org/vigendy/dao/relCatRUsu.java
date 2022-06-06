package org.vigendy.dao;

import java.io.Serializable;

public class relCatRUsu implements Serializable{
    
    private Integer idCatUsu;
    private Usuario idUsu;
    private catAliRes idAliRes;

    public relCatRUsu(Usuario idUsu, catAliRes idAliRes) {
        this.idUsu = idUsu;
        this.idAliRes = idAliRes;
    }

    public Integer getIdCatUsu() {
        return idCatUsu;
    }

    public void setIdCatUsu(Integer idCatUsu) {
        this.idCatUsu = idCatUsu;
    }

    public Usuario getIdUsu() {
        return idUsu;
    }

    public void setIdUsu(Usuario idUsu) {
        this.idUsu = idUsu;
    }

    public catAliRes getIdAliRes() {
        return idAliRes;
    }

    public void setIdAliRes(catAliRes idAliRes) {
        this.idAliRes = idAliRes;
    }
}