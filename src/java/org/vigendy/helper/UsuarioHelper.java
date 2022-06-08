package org.vigendy.helper;

import java.io.Serializable;
import java.sql.Blob;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.text.DateFormat;
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
        usuario.setNomUsu( request.getParameter( "nomUsu" ));
        if( usuario.getNomUsu()== null || usuario.getNomUsu().length() == 0 )
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
        usuario.setFecNac(getDate(request.getParameter( "fecNac" )));
        if( usuario.getFecNac()== null )
        {
            return false;
        }
        usuario.setPais(request.getParameter( "pais" ));
        if( usuario.getPais()== null )
        {
            return false;
        }    
        usuario.setPeso(getInteger(request.getParameter( "peso" )));
        if( usuario.getPeso()== null )
        {
            return false;
        }
        usuario.setEmail(request.getParameter( "correo" ));
        if( usuario.getEmail()== null )
        {
            return false;
        }
        usuario.setAltura(getInteger(request.getParameter( "altura" )));
        if( usuario.getAltura()== null )
        {
            return false;
        }
        if( request.getParameter( "contra" ) == null )
        {
            return false;
        }
        if( request.getParameter( "conpassword" ) == null )
        {
            return false;
        }
        if (!request.getParameter( "conpassword" ).equals(request.getParameter( "contra" )))
        {
            return false;
        }
        else
        {
            usuario.setPw(request.getParameter( "contra" ));
        }
        
        byte[] bytedata = request.getParameter( "fotoPP" ).getBytes();
        Blob Blobdata = new SerialBlob(bytedata);
        
        usuario.setFotoPP(Blobdata);

        return new UsuarioService().addUsuario(usuario);
    }
    
    public Date getDate( String campo )
    {
        DateFormat dateFormat = null;
        try
        {
            if (campo == null || campo.length() == 0)
            {
                return null;
            }
            dateFormat = new SimpleDateFormat( "yyyy-MM-dd" );
            return dateFormat.parse(campo);
        }
        catch (ParseException ex)
        {
            ex.printStackTrace();
        }
        return null;
    }
    
    public Double getDouble( String campo )
    {
        Double val = 0.0;
        if( campo == null || campo.length() == 0 )
        {
            return null;
        }
        try
        {
            val = new Double(campo);
            return val;
        }
        catch(NumberFormatException ex)
        {
            ex.printStackTrace();
        }
        return null;
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
    
    public Usuario getUsuarioByCorreo(HttpServletRequest request) {
        Usuario usuario = null;
        String correo = null;
        correo = (request.getParameter("correo"));
        if (correo == null) {
            return null;
        }
        return new UsuarioService().getUsuarioByCorreo(correo);
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