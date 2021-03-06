package org.srs.webapps.datacat.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.srs.datacat.client.exception.DcException;
import org.srs.webapps.datacat.model.NodeTargetModel;


/**
 *
 * @author bvan
 */
public class TreeController extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        
        try {
            NodeTargetModel model = ControllerUtils.collectAttributes(request, false);
            request.setAttribute("model", model);
        } catch (DcException ex){
            NodeTargetModel model = ControllerUtils.collectBasicAttributes(request);
            request.setAttribute("model", model);
            request.setAttribute("error", ex);
            request.getRequestDispatcher( "/display/error.jsp" ).forward( request, response );
            return;
        }
        request.getRequestDispatcher( "/display/tree.jsp" ).forward( request, response );
    }
    
}
