package org.vigendy.dao;

import java.io.Serializable;
import java.sql.Time;

public class catAct implements Serializable{
    
    private Integer idAct;
    private String actividad;
    private Time timeAct;

    public catAct() {
    }

    public Integer getIdAct() {
        return idAct;
    }

    public void setIdAct(Integer idAct) {
        this.idAct = idAct;
    }

    public String getActividad() {
        return actividad;
    }

    public void setActividad(String actividad) {
        this.actividad = actividad;
    }

    public Time getTimeAct() {
        return timeAct;
    }

    public void setTimeAct(Time timeAct) {
        this.timeAct = timeAct;
    }    
}