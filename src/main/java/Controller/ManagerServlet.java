package Controller;

import Service.FilmService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/managerServlet")
public class ManagerServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("films", FilmService.films);
        RequestDispatcher requestDispatcher= req.getRequestDispatcher("ManagerFilm.jsp");
        requestDispatcher.forward(req,resp);
    }
}
