package org.vigendy.dao;

import java.io.Serializable;
import java.sql.Blob;

public class catEjercicio implements Serializable{
    
    private Integer idEje;
    private String ejercicio;
    private Integer duraEje;
    private Blob img;

    public catEjercicio() {
    }

    public Integer getIdEje() {
        return idEje;
    }

    public void setIdEje(Integer idEje) {
        this.idEje = idEje;
    }

    public String getEjercicio() {
        return ejercicio;
    }

    public void setEjercicio(String ejercicio) {
        this.ejercicio = ejercicio;
    }

    public Integer getDuraEje() {
        return duraEje;
    }

    public void setDuraEje(Integer duraEje) {
        this.duraEje = duraEje;
    }

    public Blob getImg() {
        return img;
    }

    public void setImg(Blob img) {
        this.img = img;
    }    
}