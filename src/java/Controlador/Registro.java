/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import java.sql.PreparedStatement;

/**
 *
 * @author Usuario
 */
public class Registro extends Consultas{
    
    public boolean registro(int id, String nombre, String apellido, String usuario,String pass){
        
        PreparedStatement pst = null;
        
        try {
            String consulta = "insert into user (ID_User, Nombre, Apellido, Usuario, Pass) values(?,?,?,?,?)";
            pst = getConnection().prepareStatement(consulta);
            pst.setInt(1, id);
            pst.setString(2, nombre);
            pst.setString(3, apellido);
            pst.setString(4, usuario);
            pst.setString(5, pass);
            
            if (pst.executeUpdate() == 1){
                return true;
            }
            
        } catch(Exception e){
            System.err.println("Error" + e);
        } finally{
            try {
                if(getConnection() != null) getConnection().close();
                if(pst != null) pst.close();
                
            } catch (Exception e) {
                System.err.println("error " + e);
            }
            
        }
        return false;
    }
    
    public static void main(String[] args) {
        Registro co = new Registro();
        
        System.out.println(co.registro(3,"Mauro","Urua","MauroUrua","4321"));
    }
}
