package Controller;

import Dao.*;
import Modal.*;
import Service.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(urlPatterns = "/dichvu")
public class ServiceServlet extends HttpServlet {
   VeDao veDao = new VeDao();
    FilmDao filmDao = new FilmDao();


    CommentDao commentDao = new CommentDao();
    ReplyDao replyDao = new ReplyDao();


    CommentService commentService = new CommentService();
    ReplyService replyService = new ReplyService();

   LichSuMuaVeDao lichSuMuaVeDao = new LichSuMuaVeDao();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if(action==null){
            action="";
        }
        RequestDispatcher requestDispatcher;
        switch (action){
            case "chonghe":
                int idPhim = Integer.parseInt(req.getParameter("idPhim"));
                req.setAttribute("idPhim",idPhim);
                Film film= FilmService.films.get(FilmService.vtPhim(idPhim));
                req.setAttribute("img", film.getImg());
                req.setAttribute("tenPhim", film.getTenPhim());
                req.setAttribute("loaiPhim",film.getLoaiPhim());
                req.setAttribute("quocGia",film.getQuocGia());
                req.setAttribute("thoiGian",film.getThoiGian());
                req.setAttribute("ngayKhoiChieu",film.getNgayKhoiChieu());
                req.setAttribute("giaPhim",film.getGiaPhim());
                int idUser = Integer.parseInt(req.getParameter("idUser"));
                req.setAttribute("idUser",idUser);
                req.setAttribute("listGheDrum",GheService.listGheDrumByIdPhim(idPhim));
                req.setAttribute("soLuongDaMua",lichSuMuaVeDao.quantityTicket(idPhim));
                requestDispatcher = req.getRequestDispatcher("/Ghe.jsp");
                requestDispatcher.forward(req,resp);
                break;
            case  "cart":
                int idUser1 = Integer.parseInt(req.getParameter("idUser"));
                req.setAttribute("idUser",idUser1);
                req.setAttribute("listVe", VeService.listVeByIdUser(idUser1));
                int quantityTicket = VeService.listVeByIdUser(idUser1).size();
                req.setAttribute("quantity",quantityTicket);
                requestDispatcher = req.getRequestDispatcher("/Cart.jsp");
                requestDispatcher.forward(req,resp);
                break;
            case "xoave":
                int idUser3 = Integer.parseInt(req.getParameter("idUser"));
                req.setAttribute("idUser",idUser3);
                int idVe = Integer.parseInt(req.getParameter("idVe"));
                veDao.deleteVeById(idVe);
                VeService.ves = veDao.selectAllVe();
                int quantityTicket1 = VeService.listVeByIdUser(idUser3).size();
                req.setAttribute("quantity",quantityTicket1);
                requestDispatcher = req.getRequestDispatcher("/Cart.jsp");
                requestDispatcher.forward(req,resp);
                break;
            case "lichsumuave":
                int idUser2 = Integer.parseInt(req.getParameter("idUser"));
                req.setAttribute("idUser",idUser2);
                req.setAttribute("listVeLSMV", LichSuMuaVeSerVice.listVeFromLSMVByIdUser(idUser2));
                req.setAttribute("totalMoney",LichSuMuaVeSerVice.totalMoneyPaymentBuyIdMain(idUser2));
                int quantityTicketHistory = LichSuMuaVeSerVice.listVeFromLSMVByIdUser(idUser2).size();
                req.setAttribute("quantityLSMV",quantityTicketHistory);
                requestDispatcher = req.getRequestDispatcher("/History.jsp");
                requestDispatcher.forward(req,resp);
            case "movie":
                //phim
                String cinema = req.getParameter("cinema");
                req.setAttribute("cinema",cinema);
                int idP = filmDao.finbyid(cinema);
                req.setAttribute("idphim",idP);
                //array  phim
                ArrayList<Film> films = filmDao.selectAllFilms_Star();
                req.setAttribute("phim",films);
                //comment
                ArrayList<Comment>comments=commentDao.full_allComment();
                req.setAttribute("comment",comments);
                //Reply
                ArrayList<Reply>replies =replyDao.allReply();
                req.setAttribute("reply",replies);
                //account
                String username = req.getParameter("username");
                req.setAttribute("username",username);
                //resp
                requestDispatcher = req.getRequestDispatcher("movie-info.jsp");
                requestDispatcher.forward(req,resp);
                break;

        }
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        RequestDispatcher requestDispatcher;
        if(action==null){
            action="";
        }
        switch(action){
            case "thanhtoan":
                int idUser =  Integer.parseInt(req.getParameter("idUser"));
                VeService.ves = veDao.selectAllVe();
                long millis = System.currentTimeMillis();
                java.sql.Date date= new java.sql.Date(millis);
                for (int i=0;i<VeService.listVeByIdUser(idUser).size();i++){
                    int id = VeService.listVeByIdUser(idUser).get(i).getIdVe();
                    Account account = VeService.listVeByIdUser(idUser).get(i).getAccount();
                    Film film = VeService.listVeByIdUser(idUser).get(i).getFilm();
                    Ghe ghe = VeService.listVeByIdUser(idUser).get(i).getGhe();
                    try {
                        lichSuMuaVeDao.insertLichSuMuaVe(
                                new LichSuMuaVe(id,film,ghe,account,date));
                    } catch (SQLException e) {
                        throw new RuntimeException(e);
                    }
                }
                LichSuMuaVeSerVice.ves= lichSuMuaVeDao.selectAllVe();
                veDao.deleteVeByIdAccount(idUser);
                VeService.ves= veDao.selectAllVe();
                resp.sendRedirect("/viewUser");
                break;
            case "movie":
                //khoi tao comment
                String account = req.getParameter("nameAccount");
                String comment = req.getParameter("comment");
                String cinema = req.getParameter("cinema");
                int star = Integer.parseInt(req.getParameter("sao"));
                int idphim = Integer.parseInt(req.getParameter("idphim"));
                req.setAttribute("idphim",idphim);
                req.setAttribute("cinema",cinema);
                Comment comments = new Comment(account,comment,cinema,star,idphim);
                commentService.Create_Comnent(comments);
                //array  phim
                ArrayList<Film> films1 = filmDao.selectAllFilms_Star();
                req.setAttribute("phim",films1);
                //comment
                ArrayList<Comment>comments11=commentDao.full_allComment();
                req.setAttribute("comment",comments11);
                //Reply
                ArrayList<Reply>replies1 =replyDao.allReply();
                req.setAttribute("reply",replies1);
                //account
                String username1 = req.getParameter("username");
                req.setAttribute("username",username1);
                //resp
                requestDispatcher = req.getRequestDispatcher("movie-info.jsp");
                requestDispatcher.forward(req,resp);
                break;

            case "reply":
                int idphim1 = Integer.parseInt(req.getParameter("idphim"));
                String cinema1 = req.getParameter("cinema");
                req.setAttribute("idphim",idphim1);
                req.setAttribute("cinema",cinema1);
                //khoi tao reply
                int id = Integer.parseInt(req.getParameter("id"));
                String account1 = req.getParameter("accountss");
                String comment1 = req.getParameter("commentss");
                Reply reply = new Reply(id,comment1,account1);
                replyService.Create_reply(reply);
                //array  phim
                ArrayList<Film> films12 = filmDao.selectAllFilms_Star();
                req.setAttribute("phim",films12);
                //comment
                ArrayList<Comment>comments112=commentDao.full_allComment();
                req.setAttribute("comment",comments112);
                //Reply
                ArrayList<Reply>replies12 =replyDao.allReply();
                req.setAttribute("reply",replies12);
                //account
                String username12 = req.getParameter("username");
                req.setAttribute("username",username12);
                //resp
                requestDispatcher = req.getRequestDispatcher("movie-info.jsp");
                requestDispatcher.forward(req,resp);
                break;



        }
    }
}
