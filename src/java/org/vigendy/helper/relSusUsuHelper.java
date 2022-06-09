package org.vigendy.helper;

import java.io.Serializable;
import java.util.Date;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Calendar;
import javax.servlet.http.HttpServletRequest;
import org.vigendy.dao.Usuario;
import org.vigendy.dao.relSusUsu;
import org.vigendy.services.RelSusUsuService;
import org.vigendy.services.UsuarioService;

public class relSusUsuHelper implements Serializable{
    
        public boolean addRel( HttpServletRequest request ) throws ParseException, SQLException
    {
        relSusUsu rel = new relSusUsu( );
        if( request.getParameter( "IDusu" )== null || getInteger(request.getParameter( "IDusu" )) == 0 )
        {
            return false;
        }
        if( request.getParameter( "IDtipo" ) == null || getInteger(request.getParameter( "IDtipo" )) == 0 )
        {
            return false;
        }
        if( request.getParameter( "Tipo" ) == null || (request.getParameter( "Tipo" )).length() == 0 )
        {
            return false;
        }
        return new RelSusUsuService().RelacionInicial(rel, getInteger(request.getParameter( "IDusu" )), getInteger(request.getParameter( "IDtipo" )),request.getParameter( "Tipo" ));
    }
    
    public boolean updateRel( HttpServletRequest request ) throws ParseException, SQLException
    {
        relSusUsu rel = new relSusUsu( );
        if( request.getParameter( "IDusu" )== null || getInteger(request.getParameter( "IDusu" )) == 0 )
        {
            return false;
        }
        if( request.getParameter( "IDtipo" ) == null || getInteger(request.getParameter( "IDtipo" )) == 0 )
        {
            return false;
        }
        if( request.getParameter( "Tipo" ) == null || (request.getParameter( "Tipo" )).length() == 0 )
        {
            return false;
        }
        
        return new RelSusUsuService().updateRelacion(getInteger(request.getParameter( "IDusu" )), getInteger(request.getParameter( "IDtipo" )), request.getParameter( "Tipo" ));
    }
    
    public relSusUsu getRelById( HttpServletRequest request )
    {
        relSusUsu rel = null;
        Integer id = null;
        id = getInteger( request.getParameter( "idUsu" ) );
        if( id == null )
        {
            return null;
        }
        return new RelSusUsuService().getRelById(id );
    }
        
        
        public Date SA ( Date fecha )
        {
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(fecha);
            calendar.add(Calendar.YEAR, 1);
            return calendar.getTime();
       }
        
    public java.util.Date getDate( String campo )
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
    
}
