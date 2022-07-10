package Controller.Filter;

import Modal.Account;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;
@WebFilter(urlPatterns = "/viewAdmin")
public class FilterAdmin implements Filter{
    static  public Account account;
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        javax.servlet.Filter.super.init(filterConfig);
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        if(account==null){
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("/index.jsp");
            requestDispatcher.forward(request,response);
        }else {
            chain.doFilter(request,response);
        }

    }

    @Override
    public void destroy() {
        javax.servlet.Filter.super.destroy();
    }
}
