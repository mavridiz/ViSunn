package org.vigendy.helper.Sesion;

import java.io.Serializable;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.vigendy.dao.Usuario;
import org.vigendy.services.Sesion.loginService;
import org.vigendy.services.UsuarioService;

public class loginHelper implements Serializable{

    public loginHelper() {
    }

    public boolean VerifyCorreo ( HttpServletRequest request )
    { 
        String correo,contra;
        
        correo = request.getParameter( "correo" );
        if( correo == null || correo.length() == 0 )
        {
            return false;
        }
        return new loginService().VerifyCorreo(correo);
    }
    
    public boolean VerifyPassword ( HttpServletRequest request )
    { 
        String correo,contra;
        
        correo = request.getParameter( "correo" );
        if( correo == null || correo.length() == 0 )
        {
            return false;
        }
        
        contra = request.getParameter( "contra" );
        if( contra == null || contra.length() == 0 )
        {
            return false;
        }
        return new loginService().VerifyPassword(correo,contra);
    }
}