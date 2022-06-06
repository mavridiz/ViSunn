package org.vigendy.dao;

import java.io.Serializable;

public class relCatEUsu implements Serializable{
    
    private Integer idCatEUsu;
    private catEjercicio idEje;
    private Usuario idUsu;

    public relCatEUsu(catEjercicio idEje, Usuario idUsu) {
        this.idEje = idEje;
        this.idUsu = idUsu;
    }

    public Integer getIdCatEUsu() {
        return idCatEUsu;
    }

    public void setIdCatEUsu(Integer idCatEUsu) {
        this.idCatEUsu = idCatEUsu;
    }

    public catEjercicio getIdEje() {
        return idEje;
    }

    public void setIdEje(catEjercicio idEje) {
        this.idEje = idEje;
    }

    public Usuario getIdUsu() {
        return idUsu;
    }

    public void setIdUsu(Usuario idUsu) {
        this.idUsu = idUsu;
    }
}