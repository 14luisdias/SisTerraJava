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
   
            private int Id;
            private double Dmt;
            private int Saida;
            private int Destino;
            private String NomeSaida;
            private String NomeDestino;

    /**
     * @return the Id
     */
    public int getId() {
        return Id;
    }

    /**
     * @param Id the Id to set
     */
    public void setId(int Id) {
        this.Id = Id;
    }

    /**
     * @return the Dmt
     */
    public double getDmt() {
        return Dmt;
    }

    /**
     * @param Dmt the Dmt to set
     */
    public void setDmt(double Dmt) {
        this.Dmt = Dmt;
    }

    /**
     * @return the Saida
     */
    public int getSaida() {
        return Saida;
    }

    /**
     * @param Saida the Saida to set
     */
    public void setSaida(int Saida) {
        this.Saida = Saida;
    }

    /**
     * @return the Destino
     */
    public int getDestino() {
        return Destino;
    }

    /**
     * @param Destino the Destino to set
     */
    public void setDestino(int Destino) {
        this.Destino = Destino;
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
