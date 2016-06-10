/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author maicon
 */
public class Rota{
    private int id;
    private int saida;
    private int destino;
    private double dmt;
    private String NomeSaida;
    private String NomeDestino;
    

     public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    
    /**
     * @return the saida
     */
    public int getSaida() {
        return saida;
    }

    /**
     * @param saida the saida to set
     */
    public void setSaida(int saida) {
        this.saida = saida;
    }

    /**
     * @return the destino
     */
    public int getDestino() {
        return destino;
    }

    /**
     * @param destino the destino to set
     */
    public void setDestino(int destino) {
        this.destino = destino;
    }

    /**
     * @return the dmt
     */
    public double getDmt() {
        return dmt;
    }

    /**
     * @param dmt the dmt to set
     */
    public void setDmt(double dmt) {
        this.dmt = dmt;
    }

    /**
     * @return the NomeSaida
     */
    public String getNomeSaida() {
        return NomeSaida;
    }

    /**
     * @param NomeSaida the NomeSaida to set
     */
    public void setNomeSaida(String NomeSaida) {
        this.NomeSaida = NomeSaida;
    }

    /**
     * @return the NomeDestino
     */
    public String getNomeDestino() {
        return NomeDestino;
    }

    /**
     * @param NomeDestino the NomeDestino to set
     */
    public void setNomeDestino(String NomeDestino) {
        this.NomeDestino = NomeDestino;
    }
}
