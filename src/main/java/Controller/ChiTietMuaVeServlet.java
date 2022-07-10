package Controller;

import Service.AccountService;
import Service.LichSuMuaVeSerVice;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet(urlPatterns = "/chitietmuave")
public class ChiTietMuaVeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int idUser = Integer.parseInt(req.getParameter("idUser"));
        req.setAttribute("listVeBuy", LichSuMuaVeSerVice.listVeFromLSMVByIdUser(idUser));
        req.setAttribute("User", AccountService.findAccount(idUser));
        req.setAttribute("totalMoneyUserMain",LichSuMuaVeSerVice.totalMoneyPaymentBuyIdMain(idUser));
        req.setAttribute("totalMoneyUserSub",LichSuMuaVeSerVice.totalMoneyPaymentBuyIdSub(idUser));
        req.setAttribute("totalMoneyreduce",LichSuMuaVeSerVice.totalMoneyPaymentBuyIdSub(idUser)-LichSuMuaVeSerVice.totalMoneyPaymentBuyIdMain(idUser));
        RequestDispatcher requestDispatcher= req.getRequestDispatcher("/ChiTietMuaVe.jsp");
        requestDispatcher.forward(req,resp);
    }
}

