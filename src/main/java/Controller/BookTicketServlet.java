package Controller;

import Dao.GheDao;
import Dao.LichSuMuaVeDao;
import Dao.VeDao;
import Modal.Ghe;
import Modal.Ve;
import Service.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.util.HashSet;
import java.util.LinkedHashSet;

@WebServlet(urlPatterns = "/BookTicket")
public class BookTicketServlet extends HttpServlet {
    GheDao gheDao = new GheDao();
    VeDao veDao = new VeDao();


    LichSuMuaVeDao lichSuMuaVeDao = new LichSuMuaVeDao();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        String action = req.getParameter("action");
        if(action==null){
            action="";
        }
        switch (action){
            case "chonghe":
                int idPhim = Integer.parseInt(req.getParameter("idPhim"));
                int idUser = Integer.parseInt(req.getParameter("idUser"));
                int idGhe = Integer.parseInt(req.getParameter("idGhe"));
                String tenGhe = req.getParameter("tenGhe");
                req.setAttribute("idPhim",idPhim);
                String img = req.getParameter("img");
                req.setAttribute("img",img);
                String tenPhim = req.getParameter("tenPhim");
                req.setAttribute("tenPhim", tenPhim);
                String loaiPhim = req.getParameter("loaiPhim");
                req.setAttribute("loaiPhim",loaiPhim);
                String quocGia= req.getParameter("quocGia");
                req.setAttribute("quocGia",quocGia);
                String thoiGian= req.getParameter("thoiGian");
                req.setAttribute("thoiGian",thoiGian);
                Date ngayKc = Date.valueOf(req.getParameter("ngayKhoiChieu"));
                req.setAttribute("ngayKhoiChieu",ngayKc);
                int giaPhim = Integer.parseInt(req.getParameter("giaPhim"));
                req.setAttribute("giaPhim",giaPhim);
                req.setAttribute("idUser",idUser);
                req.setAttribute("listGheDrum",GheService.listGheDrumByIdPhim(idPhim));
                req.setAttribute("soLuongDaMua",lichSuMuaVeDao.quantityTicket(idPhim));
                if(0<idGhe && idGhe<=50 && checkIdGheExist(idGhe,idPhim)){
                    try {
                        gheDao.insertGhe(new Ghe(idGhe,tenGhe));
                    } catch (SQLException e){
                        throw new RuntimeException(e);
                    }
                    GheService.ghes = gheDao.selectAllGhes();
                    try {
                        veDao.insertVe(new Ve(FilmService.findFilm(idPhim),GheService.findGhe(idGhe),AccountService.findAccount(idUser)));
                    }catch (SQLException e){
                        throw new RuntimeException(e);
                    }
                    VeService.ves = veDao.selectAllVe();
                    resp.sendRedirect("/viewUser");
                }else {
                    if(idGhe<0 || idGhe>50){
                        String message = "Số ghế "+idGhe+" không tồn tại ! Vui lòng nhập lại";
                        req.setAttribute("message", message);
                        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/Ghe.jsp");
                        requestDispatcher.forward(req,resp);

                    }
                    else {
                        String message = "Ghế "+idGhe+" bạn chọn đã có người dùng vui lòng nhập lại!";
                        req.setAttribute("message", message);
                        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/Ghe.jsp");
                        requestDispatcher.forward(req,resp);

                    }
                }
            break;
        }
    }
    public  boolean checkIdGheExist(int id,int idPhim){
        HashSet<Integer> arrayList = GheService.listGheDrumByIdPhim(idPhim);
        for (Integer a:arrayList){
            if(id==a){
                return true;
            }
        }
        return false;
    }
}
