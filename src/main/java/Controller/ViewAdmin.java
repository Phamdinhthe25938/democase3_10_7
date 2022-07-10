package Controller;

import Controller.Filter.FilterAdmin;
import Controller.Filter.FilterUser;
import Dao.VeDao;
import Service.AccountService;
import Service.FilmService;
import Service.VeService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet(urlPatterns = "/viewAdmin")
public class ViewAdmin extends HttpServlet {
    VeDao veDao = new VeDao();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("films", FilmService.films);
        req.setAttribute("idUser", 0);
        req.setAttribute("username", FilterAdmin.account.getUserName());
        int idUser = AccountService.findIdAccountByName(FilterAdmin.account.getUserName());
        req.setAttribute("quantity", VeService.listVeByIdUser(idUser).size());
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/ViewAdmin.jsp");
        requestDispatcher.forward(req, resp);
    }
}
