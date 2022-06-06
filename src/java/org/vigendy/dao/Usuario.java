package org.vigendy.dao;

import java.io.Serializable;
import java.sql.Blob;
import java.util.Date;

public class Usuario implements Serializable{
    
    private Integer idUsu;
    private String nomUsu;
    private String aPatUsu;
    private String aMatUsu;
    private Date fecNac;
    private String pais;
    private String email;
    private Float peso;
    private Float altura;
    private String pw;
    private Blob fotoPP;
 
    public Usuario() {
    }

    public Integer getIdUsu() {
        return idUsu;
    }

    public void setIdUsu(Integer idUsu) {
        this.idUsu = idUsu;
    }

    public String getNomUsu() {
        return nomUsu;
    }

    public void setNomUsu(String nomUsu) {
        this.nomUsu = nomUsu;
    }

    public String getaPatUsu() {
        return aPatUsu;
    }

    public void setaPatUsu(String aPatUsu) {
        this.aPatUsu = aPatUsu;
    }

    public String getaMatUsu() {
        return aMatUsu;
    }

    public void setaMatUsu(String aMatUsu) {
        this.aMatUsu = aMatUsu;
    }

    public Date getFecNac() {
        return fecNac;
    }

    public void setFecNac(Date fecNac) {
        this.fecNac = fecNac;
    }

    public String getPais() {
        return pais;
    }

    public void setPais(String pais) {
        this.pais = pais;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Float getPeso() {
        return peso;
    }

    public void setPeso(Float peso) {
        this.peso = peso;
    }

    public Float getAltura() {
        return altura;
    }

    public void setAltura(Float altura) {
        this.altura = altura;
    }

    public Blob getFotoPP() {
        return fotoPP;
    }

    public void setFotoPP(Blob fotoPP) {
        this.fotoPP = fotoPP;
    }
    public String getPw() {
        return pw;
    }

    public void setPw(String pw) {
        this.pw = pw;
    }
}