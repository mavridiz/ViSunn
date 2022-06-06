package org.vigendy.helper;

import java.io.Serializable;
import java.sql.Blob;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.sql.rowset.serial.SerialBlob;
import org.vigendy.dao.Usuario;
import org.vigendy.services.UsuarioService;

public class UsuarioHelper implements Serializable{
    
    private List<Usuario>list;
    private Usuario usuario;

    public UsuarioHelper() 
    {
    }
    
    public boolean loadList( )
    {
        list = new UsuarioService().getUsuarioList();
        return list != null && list.size() > 0;
    }
    
    public boolean addUsuario( HttpServletRequest request ) throws ParseException, SQLException
    {
        usuario = new Usuario( ); 
        usuario.setNomUsu( request.getParameter( "name" ));
        if( usuario.getNomUsu()== null )
        {
            return false;
        }
        usuario.setaPatUsu(request.getParameter( "apPat" ));
        if( usuario.getaPatUsu()== null )
        {
            return false;
        }
        usuario.setaMatUsu(request.getParameter( "apMat" ));
        if( usuario.getaMatUsu()== null )
        {
            return false;
        }
        Date fecnac = new SimpleDateFormat("dd/MM/yyyy").parse(request.getParameter( "fecNac" ));
        usuario.setFecNac(fecnac);
        if( usuario.getFecNac()== null )
        {
            return false;
        }
        usuario.setPais(request.getParameter( "pais" ));
        if( usuario.getPais()== null )
        {
            return false;
        }
        Float peso = Float.parseFloat(request.getParameter( "peso" ));        
        usuario.setPeso(peso);
        if( usuario.getPeso()== null )
        {
            return false;
        }
        Float altura = Float.parseFloat(request.getParameter( "altura" ));  
        usuario.setAltura(altura);
        if( usuario.getAltura()== null )
        {
            return false;
        }
        if( request.getParameter( "password" ) == null )
        {
            return false;
        }
        if( request.getParameter( "conpassword" ) == null )
        {
            return false;
        }
        if (request.getParameter( "password" ) != request.getParameter( "conpassword" ))
        {
            return false;
        }
        else
        {
            usuario.setPw(request.getParameter( "password" ));
        }
        
        byte[] bytedata = request.getParameter( "fotoPP" ).getBytes();
        Blob Blobdata = new SerialBlob(bytedata);
        
        usuario.setFotoPP(Blobdata);

        return new UsuarioService().addUsuario(usuario);
    }
    
    public Integer getInteger( String campo )
    {
        Integer val = 0;
        if( campo == null || campo.length() == 0 )
        {
            return null;
        }
        try
        {
            val = new Integer(campo);
            return val;
        }
        catch(NumberFormatException ex)
        {
            ex.printStackTrace();
        }
        return null;
    }

    public List<Usuario> getList()
    {
        if( list == null || list.size( )== 0 )
        {
            if( !loadList( ) )
            {
                return null;
            }
        }
        return list;
    }
    
    public boolean deleteUsuario( HttpServletRequest request )
    {
        usuario = new Usuario( ); 
        usuario.setIdUsu(getInteger( request.getParameter( "id" )) );
        if( usuario.getIdUsu()== null )
        {
            return false;
        }
        return new UsuarioService().deleteUsuario( usuario );
    }
    
    public boolean updateUsuario( HttpServletRequest request )
    {
        usuario = new Usuario( ); 
        usuario.setIdUsu(getInteger( request.getParameter( "id" )) );
        if( usuario.getIdUsu()== null )
        {
            return false;
        }
        usuario.setNomUsu( request.getParameter( "nomUsuario" ) );
        if( usuario.getNomUsu()== null )
        {
            return false;
        }
        return new UsuarioService().updateUsuario( usuario );
    }
    
    public Usuario getUsuarioById( HttpServletRequest request )
    {
        Usuario usuario = null;
        Integer id = null;
        id = getInteger( request.getParameter( "id" ) );
        if( id == null )
        {
            return null;
        }
        return new UsuarioService().getUsuarioById( id );
    }
    
    public Usuario getUsuarioByNom(HttpServletRequest request) {
        Usuario usuario = null;
        String nom = null;
        nom = (request.getParameter("nomUsuario"));
        if (nom == null) {
            return null;
        }
        return new UsuarioService().getUsuarioByNom(nom);
    }
    
    public void setList(List<Usuario> list) 
    {
        this.list = list;
    }

    public Usuario getUsuario() 
    {
        return usuario;
    }

    public void setUsuario(Usuario usuario) 
    {
        this.usuario = usuario;
    }  
    
    
}