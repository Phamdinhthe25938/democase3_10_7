package Controller;

import Dao.LichSuMuaVeDao;
import Service.AccountService;
import Service.LichSuMuaVeSerVice;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet(urlPatterns = "/doanhthu")
public class DoanhThuServlet extends HttpServlet {

    LichSuMuaVeDao lichSuMuaVeDao = new LichSuMuaVeDao();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("Soveban",lichSuMuaVeDao.quantityVeSold());
        req.setAttribute("Sokhach",lichSuMuaVeDao.quantityAccountBuyVe());
        req.setAttribute("Doanhthu", LichSuMuaVeSerVice.totalRevenue());
        req.setAttribute("listAccountBuyTicket", AccountService.listAccountSoldVe());
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/DoanhThu.jsp");
        requestDispatcher.forward(req,resp);
    }
}
