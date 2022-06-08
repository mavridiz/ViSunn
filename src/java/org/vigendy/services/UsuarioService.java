package org.vigendy.services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import org.vigendy.dao.Usuario;


public class UsuarioService 
{
    
    public List<Usuario> getUsuarioList( )
    {
        List<Usuario>usuarioList = null;
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        Usuario usuario = null;
        
        try 
        {
            connection = MySqlConnection.getConnection( );
            if( connection == null )
            {
                return null;
            }
            statement = connection.createStatement( );
            if( statement == null )
            {
                return null;
            }
            resultSet = statement.executeQuery( "SELECT * FROM TBLUSUARIO" );
            if( resultSet == null )
            {
                return null;
            }
            usuarioList = new ArrayList<>();
            while( resultSet.next() )
            {
                usuario = new Usuario();
                usuario.setIdUsu(resultSet.getInt(1) );
                usuario.setNomUsu(resultSet.getString(2) );
                usuarioList.add(usuario);
            }
            resultSet.close();
            MySqlConnection.closeConnection(connection);
            return usuarioList;
        } 
        catch (SQLException ex) 
        {
            ex.printStackTrace();
        }
        return null;
    }
    
    public boolean addUsuario( Usuario usuario )
    {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        String sql = "INSERT INTO TBLUSUARIO (NOMUSU,APATUSU,AMATUSU,FECNAC,PAIS,EMAIL,PW,PESO,ALTURA,FOTOPP) VALUES (?,?,?,?,?,?,?,?,?,?)";
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
            preparedStatement.setString(1, usuario.getNomUsu());
            preparedStatement.setString(2, usuario.getaPatUsu());
            preparedStatement.setString(3, usuario.getaMatUsu());          
            preparedStatement.setDate(4, new java.sql.Date(usuario.getFecNac().getTime()));
            preparedStatement.setString(5, usuario.getPais());
            preparedStatement.setString(6, usuario.getEmail());
            preparedStatement.setString(7, usuario.getPw());
            preparedStatement.setDouble(8, usuario.getPeso());
            preparedStatement.setDouble(9, usuario.getAltura());
            preparedStatement.setBlob(10, usuario.getFotoPP());
            
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
    
    public boolean deleteUsuario( Usuario usuario )
    {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        String sql = "DELETE FROM TBLUSUARIO WHERE IDPROVEEDOR = ?";
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
            preparedStatement.setInt(1, usuario.getIdUsu());
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
    
    public Usuario getUsuarioById( Integer id )
    {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        String sql = "SELECT * FROM TBLUSUARIO WHERE IDPROVEEDOR = ?";
        Usuario usuario = null;
        try 
        {
            connection = MySqlConnection.getConnection( );
            if( connection == null )
            {
                return null;
            }
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, id );
            resultSet = preparedStatement.executeQuery( );
            if( resultSet == null )
            {
                return null;
            }
            while( resultSet.next() )
            {
                usuario = new Usuario();
                usuario.setIdUsu(resultSet.getInt(1) );
                usuario.setNomUsu(resultSet.getString(2) );
            }
            resultSet.close();
            MySqlConnection.closeConnection(connection);
            return usuario;
        } 
        catch (SQLException ex) 
        {
            ex.printStackTrace();
        }
        return null;
    }
    
    public Usuario getUsuarioByCorreo( String correo )
    {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        String sql = "SELECT * FROM TBLUSUARIO WHERE email = ?";
        Usuario usuario = null;
        try 
        {
            connection = MySqlConnection.getConnection( );
            if( connection == null )
            {
                return null;
            }
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, correo );
            resultSet = preparedStatement.executeQuery( );
            if( resultSet == null )
            {
                return null;
            }
            while( resultSet.next() )
            {
                usuario = new Usuario();
                usuario.setIdUsu(resultSet.getInt(1) );
                usuario.setNomUsu(resultSet.getString(2) );
                usuario.setaPatUsu(resultSet.getString(3) );
                usuario.setaMatUsu(resultSet.getString(4) );
                usuario.setFecNac(resultSet.getDate(5) );
                usuario.setPais(resultSet.getString(6) );
                usuario.setEmail(resultSet.getString(7) );
                usuario.setPw(resultSet.getString(8) );
                usuario.setPeso(resultSet.getInt(9) );
                usuario.setAltura(resultSet.getInt(10) );
                usuario.setFotoPP(resultSet.getBlob(11) );
            } 
            resultSet.close();
            MySqlConnection.closeConnection(connection);
            return usuario;
        } 
        catch (SQLException ex) 
        {
            ex.printStackTrace();
        }
        return null;
    }
    
    public boolean updateUsuario( Usuario usuario )
    {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        String sql = "update TBLUSUARIO SET NOMPROVEEDOR= ? WHERE IDPROVEEDOR = ?";
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
            preparedStatement.setString(1, usuario.getNomUsu());
            preparedStatement.setInt(2, usuario.getIdUsu());
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