package Dao;

import Connect.ConnectionMySQL;
import Dao.Iterface.IFilmDao;
import Modal.Film;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class FilmDao implements IFilmDao {
    ConnectionMySQL connectionMySQL = new ConnectionMySQL();
    private static final String SELECT_ALL_PHIM ="SELECT * FROM Phim";
    private  static final  String INSERT_FILM_SQL =
            "INSERT INTO phim(idPhim ,tenPhim,thoiGian,loaiPhim,daoDien,quocGia,dienVien,nhaSX,ngayKhoiChieu,moTa,trailer,img,giaPhim)VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?,?);";
    private static final String UPDATE_FILM = "update phim set tenPhim=?,thoiGian=?,loaiPhim=?,daoDien=?,quocGia=?,dienVien=?,nhaSX=?,ngayKhoiChieu=?,moTa=?,trailer=?,img=?,giaPhim=? where idPhim = ?;";
    private static final String DELETE_FILM = "delete from phim where idPhim = ?;";
    private static final String SELECT_FILM_BY_ID = "select * from phim where idPhim = ?;";



    @Override
    public boolean insertFilm(Film film) throws SQLException {
        try(Connection connection = connectionMySQL.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_FILM_SQL)) {
            preparedStatement.setInt(1, film.getIdPhim());
            preparedStatement.setString(2, film.getTenPhim());
            preparedStatement.setString(3, film.getThoiGian());
            preparedStatement.setString(4, film.getLoaiPhim());
            preparedStatement.setString(5, film.getDaoDien());
            preparedStatement.setString(6, film.getQuocGia());
            preparedStatement.setString(7, film.getDienVien());
            preparedStatement.setString(8, film.getNhaSX());
            preparedStatement.setDate(9, film.getNgayKhoiChieu());
            preparedStatement.setString(10, film.getMoTa());
            preparedStatement.setString(11, film.getTrailer());
            preparedStatement.setString(12, film.getImg());
            preparedStatement.setInt(13,film.getGiaPhim());
            return preparedStatement.execute();
        }catch (SQLException e) {
            printSQLException(e);
        }
        return false;
    }
    @Override
    public List<Film> selectAllFilms() {
        ArrayList<Film> films = new ArrayList<>();
        try(Connection connection = connectionMySQL.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_PHIM)) {
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int idPhim = resultSet.getInt("idPhim");
                String tenPhim = resultSet.getString("tenPhim");
                String thoiGian = resultSet.getString("thoiGian");
                String loaiPhim = resultSet.getString("loaiPhim");
                String daoDien = resultSet.getString("daoDien");
                String quocGia = resultSet.getString("quocGia");
                String dienVien = resultSet.getString("dienVien");
                String nhaSX = resultSet.getString("nhaSX");
                Date ngayKhoiChieu = resultSet.getDate("ngayKhoiChieu");
                String moTa = resultSet.getString("moTa");
                String trailer = resultSet.getString("trailer");
                String img = resultSet.getString("img");
                int giaPhim = resultSet.getInt("giaPhim");
                double star = resultSet.getDouble("star");
                films.add(new Film(idPhim,tenPhim,thoiGian,loaiPhim,daoDien,quocGia,dienVien,nhaSX,ngayKhoiChieu,moTa,trailer,img,giaPhim,star));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return films;
    }
    public ArrayList<Film> selectAllFilms_Star() {
        ArrayList<Film> films = new ArrayList<>();
        try(Connection connection = connectionMySQL.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_PHIM)) {
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int idPhim = resultSet.getInt("idPhim");
                String tenPhim = resultSet.getString("tenPhim");
                String thoiGian = resultSet.getString("thoiGian");
                String loaiPhim = resultSet.getString("loaiPhim");
                String daoDien = resultSet.getString("daoDien");
                String quocGia = resultSet.getString("quocGia");
                String dienVien = resultSet.getString("dienVien");
                String nhaSX = resultSet.getString("nhaSX");
                Date ngayKhoiChieu = resultSet.getDate("ngayKhoiChieu");
                String moTa = resultSet.getString("moTa");
                String trailer = resultSet.getString("trailer");
                String img = resultSet.getString("img");
                double star = resultSet.getDouble("star");
                films.add(new Film(idPhim,tenPhim,thoiGian,loaiPhim,daoDien,quocGia,dienVien,nhaSX,ngayKhoiChieu,moTa,trailer,img,star));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return films;
    }
    public int finbyid(String name) {
        String checkid = "SELECT idPhim from phim where tenPhim = ?";
        int idphim = -1;
        try (Connection connection = connectionMySQL.getConnection()) {
            PreparedStatement preparedStatement = connection.prepareStatement(checkid);
            preparedStatement.setString(1, name);
            ResultSet resultSet = preparedStatement.executeQuery();
            resultSet.next();
            idphim = resultSet.getInt("idPhim");
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return idphim;
    }

    @Override
    public boolean deleteFilm(int id) throws SQLException {
        try (Connection connection = connectionMySQL.getConnection()) {
            PreparedStatement preparedStatement = connection.prepareStatement(DELETE_FILM);
            preparedStatement.setInt(1, id);
            return preparedStatement.execute();
        } catch (SQLException e) {
            printSQLException(e);
            return false;
        }
    }

    @Override
    public boolean updateFilm(Film film) throws SQLException {
        try (Connection connection = connectionMySQL.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_FILM)) {
            preparedStatement.setString(1, film.getTenPhim());
            preparedStatement.setString(2, film.getThoiGian());
            preparedStatement.setString(3, film.getLoaiPhim());
            preparedStatement.setString(4, film.getDaoDien());
            preparedStatement.setString(5, film.getQuocGia());
            preparedStatement.setString(6, film.getDienVien());
            preparedStatement.setString(7, film.getNhaSX());
            preparedStatement.setDate(8, film.getNgayKhoiChieu());
            preparedStatement.setString(9, film.getMoTa());
            preparedStatement.setString(10, film.getTrailer());
            preparedStatement.setString(11, film.getImg());
            preparedStatement.setInt(12,film.getGiaPhim());
            preparedStatement.setInt(13,film.getIdPhim());
            return preparedStatement.executeUpdate() > 0;
        } catch (SQLException e) {
            printSQLException(e);
            return false;
        }
    }

    @Override
    public Film findById(int idFilm) {
        Film film = null;
        try (Connection connection = connectionMySQL.getConnection()) {
            assert connection != null;
            try (PreparedStatement preparedStatement = connection.prepareStatement(SELECT_FILM_BY_ID);) {
                preparedStatement.setInt(1, idFilm);
                System.out.println(preparedStatement);
                ResultSet rs = preparedStatement.executeQuery();
                while (rs.next()) {
                    String tenPhim = rs.getString("tenPhim");
                    String thoiGian = rs.getString("thoiGian");
                    String loaiPhim = rs.getString("loaiPhim");
                    String daoDien = rs.getString("daoDien");
                    String quocGia = rs.getString("quocGia");
                    String dienVien = rs.getString("dienVien");
                    String nhaSX = rs.getString("nhaSX");
                    Date ngayKhoiChieu = rs.getDate("ngayKhoiChieu");
                    String moTa = rs.getString("moTa");
                    String trailer = rs.getString("trailer");
                    String img = rs.getString("img");
                    int gia = rs.getInt("giaPhim");
                    double sao = rs.getDouble("star");
                    film = new Film(idFilm, tenPhim, thoiGian, loaiPhim, daoDien, quocGia, dienVien, nhaSX, ngayKhoiChieu, moTa, trailer, img,gia,sao);

                }
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return film;
//        Film film = null;
//        try (Connection connection = connectionMySQL.getConnection()) {
//            assert connection != null;
//            try (PreparedStatement preparedStatement = connection.prepareStatement(SELECT_FILM_BY_ID);) {
//                preparedStatement.setInt(1, idFilm);
//                System.out.println(preparedStatement);
//                ResultSet rs = preparedStatement.executeQuery();
//                while (rs.next()) {
//                    String tenPhim = rs.getString("tenPhim");
//                    String thoiGian = rs.getString("thoiGian");
//                    String loaiPhim = rs.getString("loaiPhim");
//                    String daoDien = rs.getString("daoDien");
//                    String quocGia = rs.getString("quocGia");
//                    String dienVien = rs.getString("dienVien");
//                    String nhaSX = rs.getString("nhaSX");
//                    Date ngayKhoiChieu = rs.getDate("ngayKhoiChieu");
//                    String moTa = rs.getString("moTa");
//                    String trailer = rs.getString("trailer");
//                    String img = rs.getString("img");
//                    int gia = rs.getInt("giaPhim");
//                    double sao = rs.getDouble("star");
//                    film = new Film(tenPhim, thoiGian, loaiPhim, daoDien, quocGia, dienVien, nhaSX, ngayKhoiChieu, moTa, trailer, img,gia,sao);
//
//                }
//            }
//        } catch (SQLException e) {
//            printSQLException(e);
//        }
//        return film;
    }
    private void printSQLException(SQLException ex) {
        for (Throwable e : ex) {
            if (e instanceof SQLException) {
                e.printStackTrace();
                System.out.println("SQLState:" + ((SQLException) e).getSQLState());
                System.out.println("Error Code:" + ((SQLException) e).getSQLState());
                System.out.println("Message:" + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause:" + t);
                    t = t.getCause();
                }
            }
        }
    }
}
