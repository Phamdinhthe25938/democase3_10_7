package Controller;

import Dao.FilmDao;
import Modal.Film;
import Service.FilmService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.List;

@WebServlet(urlPatterns = "/filmManager")
public class FilmServlet extends HttpServlet {
    FilmService filmService = new FilmService();

    FilmDao filmDao = new FilmDao();
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        try {
            switch (action) {
                case "create":
                    createFilm(request,response);
                    break;
                case "edit":
                    editFilm(request,response);
                    break;
                case "delete":
                    deleteFilm(request,response);
                    break;
                default:
            }

        }catch (SQLException | ParseException ex) {
            throw new ServletException(ex);
        }


    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = " ";
        }
        try {
            switch (action) {
                case "edit":
                    showEditForm(request,response);
                    break;
                case "delete":
                    showDeleteForm(request,response);
                    break;
                default:
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    private void listFilm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
       FilmService.films = filmDao.selectAllFilms();
        response.sendRedirect("/managerServlet");
    }

    private void createFilm(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException, ParseException {
        int idPhim = Integer.parseInt(request.getParameter("idPhim"));
        String tenPhim = request.getParameter("tenPhim");
        String thoiGian = request.getParameter("thoiGian");
        String loaiPhim = request.getParameter("loaiPhim");
        String daoDien =request.getParameter("daoDien");
        String quocGia = request.getParameter("quocGia");
        String dienVien = request.getParameter("dienVien");
        String nhaSX = request.getParameter("nhaSX");
        Date ngayKhoiChieu = Date.valueOf(request.getParameter("ngayKhoiChieu"));
        String moTa = request.getParameter("moTa");
        String trailer = request.getParameter("trailer");
        String img = request.getParameter("img");
        int gia = Integer.parseInt(request.getParameter("giaPhim"));
        Film film = new Film(idPhim,tenPhim, thoiGian, loaiPhim, daoDien, quocGia, dienVien, nhaSX, ngayKhoiChieu, moTa, trailer, img,gia);
        filmService.create(film);
        listFilm(request,response);
    }

    private void editFilm(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException, ParseException {
        int idPhim = Integer.parseInt(request.getParameter("id"));
        String tenPhim = request.getParameter("tenPhim");
        String thoiGian = request.getParameter("thoiGian");
        String loaiPhim = request.getParameter("loaiPhim");
        String daoDien =request.getParameter("daoDien");
        String quocGia = request.getParameter("quocGia");
        String dienVien = request.getParameter("dienVien");
        String nhaSX = request.getParameter("nhaSX");
        Date ngayKhoiChieu = Date.valueOf(request.getParameter("ngayKhoiChieu"));
        String moTa = request.getParameter("moTa");
        String trailer = request.getParameter("trailer");
        String img = request.getParameter("img");
        int gia = Integer.parseInt(request.getParameter("giaPhim"));
        Film film = new Film(idPhim,tenPhim, thoiGian, loaiPhim, daoDien, quocGia, dienVien, nhaSX, ngayKhoiChieu, moTa, trailer, img,gia);
        filmService.edit(film);
        listFilm(request,response);
    }

    private void deleteFilm(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        int id = Integer.parseInt(request.getParameter("id"));
        filmService.delete(id);
        listFilm(request,response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        int idPhim = Integer.parseInt(request.getParameter("idPhim"));
        request.setAttribute("idPhim",idPhim);
        request.setAttribute("film",FilmService.findFilm(idPhim));
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/EditFilm.jsp");
        requestDispatcher.forward(request,response);
    }
    private void showDeleteForm(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Film existingPhim = filmService.findById(id);
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/delete.jsp");
        request.setAttribute("phim", existingPhim);
        dispatcher.forward(request, response);
    }

}
