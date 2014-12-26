/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package business;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author david
 */
public class UserActions {
    public static HttpServletRequest login(HttpServletRequest request, HttpServletResponse response){
        request.setAttribute("view", "homepage.jsp");
        return request; 
    }
    public static HttpServletRequest logout(HttpServletRequest request, HttpServletResponse response){
        request.setAttribute("view", "login.jsp");
        request.getSession().invalidate();
        return request; 
    }
}
