/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.vigendy.services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import org.vigendy.dao.relSusUsu;
import org.vigendy.helper.relSusUsuHelper;

public class RelSusUsuService {
    
        public boolean RelacionInicial ( relSusUsu rel, Integer usu, Integer sub, String tipo )
    {
        relSusUsuHelper helper = new relSusUsuHelper();
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        String sql = "INSERT INTO RELSUSUSU (IDUSU,IDSUS,FECINI,FECFIN) VALUES (?,?,?,?)";
        int row = 0;
        try 
        {
            connection = MySqlConnection.getConnection( );
            if( connection == null )
            {
                return false;
            }
            preparedStatement = connection.prepareStatement(sql);
            if( preparedStatement == null )
            {
                return false;
            }
            preparedStatement.setInt(1, usu);
            preparedStatement.setInt(2, sub); 
            
            Calendar cal = Calendar.getInstance();
            Calendar calendario = Calendar.getInstance();
            calendario.add(Calendar.YEAR, 99);
            Date date = cal.getTime();
            Date year = calendario.getTime();
            
            preparedStatement.setDate(3, new java.sql.Date(date.getTime()));   
            preparedStatement.setDate(4, new java.sql.Date(year.getTime()));  
            row = preparedStatement.executeUpdate();
            MySqlConnection.closeConnection(connection);
            return row == 1;
        } 
        catch (SQLException ex) 
        {
            ex.printStackTrace();
        }
        return false;
    }  
        
    public boolean updateRelacion ( Integer usu, Integer sub, String dur )
    {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        String sql = "update RELSUSUSU SET IDSUS = ?, FECINI = ?, FECFIN = ? WHERE IDUSU= ?;";
        int row = 0;
        try 
        {
            connection = MySqlConnection.getConnection( );
            if( connection == null )
            {
                return false;
            }
            preparedStatement = connection.prepareStatement(sql);
            if( preparedStatement == null )
            {
                return false;
            }
            preparedStatement.setInt(4, usu);
            preparedStatement.setInt(1, sub); 
            
            Calendar cal = Calendar.getInstance();
            Calendar calendario = Calendar.getInstance();
            
            if(dur.equals("year")){
                calendario.add(Calendar.YEAR, 1);
            }
            else{
                calendario.add(Calendar.MONTH, 1);
            }
            
            Date date = cal.getTime();
            Date year = calendario.getTime();
            
            preparedStatement.setDate(2, new java.sql.Date(date.getTime()));   
            preparedStatement.setDate(3, new java.sql.Date(year.getTime()));  
            row = preparedStatement.executeUpdate();
            MySqlConnection.closeConnection(connection);
            return row == 1;
        } 
        catch (SQLException ex) 
        {
            ex.printStackTrace();
        }
        return false;
    }    
    
        public relSusUsu getRelById( Integer IdUsu )
    {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        String sql = "SELECT * FROM RELSUSUSU WHERE IDUSU = ?";
        relSusUsu rel = null;
        try 
        {
            connection = MySqlConnection.getConnection( );
            if( connection == null )
            {
                return null;
            }
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, IdUsu );
            resultSet = preparedStatement.executeQuery( );
            if( resultSet == null )
            {
                return null;
            }
            while( resultSet.next() )
            {
                rel = new relSusUsu();
                rel.setIdSusUsu(resultSet.getInt(1) );
                rel.getIdUsu().setIdUsu(resultSet.getInt(2) );
                rel.getIdSus().setIdSus(resultSet.getInt(3) );
                rel.setFecIni(resultSet.getDate(4) );
                rel.setFecFin(resultSet.getDate(5) );
            } 
            resultSet.close();
            MySqlConnection.closeConnection(connection);
            return rel;
        } 
        catch (SQLException ex) 
        {
            ex.printStackTrace();
        }
        return null;
    }
}