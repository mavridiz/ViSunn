package org.vigendy.dao;

import java.io.Serializable;
import java.util.Date;

public class relSusUsu implements Serializable{
    
    private Integer idSusUsu;
    private Usuario idUsu;
    private Suscripcion idSus;
    private Date fecIni;
    private Date fecFin;

    public relSusUsu(Usuario idUsu, Suscripcion idSus) {
        this.idUsu = idUsu;
        this.idSus = idSus;
    }

    public Integer getIdSusUsu() {
        return idSusUsu;
    }

    public void setIdSusUsu(Integer idSusUsu) {
        this.idSusUsu = idSusUsu;
    }

    public Usuario getIdUsu() {
        return idUsu;
    }

    public void setIdUsu(Usuario idUsu) {
        this.idUsu = idUsu;
    }

    public Suscripcion getIdSus() {
        return idSus;
    }

    public void setIdSus(Suscripcion idSus) {
        this.idSus = idSus;
    }

    public Date getFecIni() {
        return fecIni;
    }

    public void setFecIni(Date fecIni) {
        this.fecIni = fecIni;
    }

    public Date getFecFin() {
        return fecFin;
    }

    public void setFecFin(Date fecFin) {
        this.fecFin = fecFin;
    }   
}