/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.vigendy.services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import org.vigendy.dao.relSusUsu;
import org.vigendy.helper.relSusUsuHelper;

public class RelSusUsuService {
    
        public boolean addRelacion ( relSusUsu rel, Integer usu, Integer sub )
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
            calendario.add(Calendar.YEAR, 1);
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
}