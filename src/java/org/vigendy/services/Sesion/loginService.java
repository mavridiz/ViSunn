package org.vigendy.services.Sesion;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.vigendy.dao.Usuario;
import org.vigendy.services.MySqlConnection;

public class loginService{

    public loginService() {
    }

    public boolean VerifyCorreo(String correo)
    {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        String sql = "SELECT IDUSU,EMAIL FROM TBLUSUARIO WHERE EMAIL = ?;";
        try 
        {
            connection = MySqlConnection.getConnection( );
            if( connection == null )
            {
                return false;
            }
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, correo );
            resultSet = preparedStatement.executeQuery( );
            if( resultSet == null )
            {
                return false;
            }
            resultSet.close();
            MySqlConnection.closeConnection(connection);
            return true;
        } 
        catch (SQLException ex) 
        {
            ex.printStackTrace();
        }
        return false;       
    }    
    
    
    public boolean VerifyPassword (String correo, String password)
    {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        String sql = "SELECT IDUSU,EMAIL,PW FROM TBLUSUARIO WHERE EMAIL = ?;";
        try 
        {
            connection = MySqlConnection.getConnection( );
            if( connection == null )
            {
                return false;
            }
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, correo );
            resultSet = preparedStatement.executeQuery( );
            if( resultSet == null )
            {
                return false;
            }
            if(password.equals(resultSet.getString(3)))
            {
                return true;
            }
            resultSet.close();
            MySqlConnection.closeConnection(connection);
        } 
        catch (SQLException ex) 
        {
            ex.printStackTrace();
        }
        return false;       
    }
    
}
