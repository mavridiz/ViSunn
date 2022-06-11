package org.vigendy.dao;

import java.io.Serializable;
import java.util.Date;

public class relSusUsu implements Serializable{
    
    private Integer idSusUsu;
    private Integer idUsu;
    private Integer idSus;
    private Date fecIni;
    private Date fecFin;

    public relSusUsu() {

    }

    public Integer getIdSusUsu() {
        return idSusUsu;
    }

    public void setIdSusUsu(Integer idSusUsu) {
        this.idSusUsu = idSusUsu;
    }

    public Integer getIdUsu() {
        return idUsu;
    }

    public void setIdUsu(Integer idUsu) {
        this.idUsu = idUsu;
    }

    public Integer getIdSus() {
        return idSus;
    }

    public void setIdSus(Integer idSus) {
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