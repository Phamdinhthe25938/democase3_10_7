package Dao;

import Connect.ConnectionMySQL;
import Dao.Iterface.IVeDao;
import Modal.*;
import Service.AccountService;
import Service.FilmService;
import Service.GheService;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class VeDao implements IVeDao {
    ConnectionMySQL connectionMySQL = new ConnectionMySQL();
    private  static final  String
            INSERT_VE_SQL = "INSERT INTO ve(idPhim,idGhe,idAccount) VALUES (?, ?, ?);";
    private static final String SELECT_ALL_VE ="SELECT * FROM ve";

    private static final String  DELETE_VE_BY_ID_ACCOUNT= "DELETE FROM VE WHERE idAccount= ?";

    private static final String  DELETE_VE_BY_ID= "DELETE FROM VE WHERE idVe=?";
    @Override
    public void insertVe(Ve ve) throws SQLException {
        try(Connection connection = connectionMySQL.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_VE_SQL)){
            preparedStatement.setInt(1,ve.getFilm().getIdPhim());
            preparedStatement.setInt(2,ve.getGhe().getIdGhe());
            preparedStatement.setInt(3,ve.getAccount().getId());
            preparedStatement.executeUpdate();
        }
        catch (SQLException e){
            printSQLException(e);
        }
    }
    public boolean deleteVeByIdAccount(int idAccount) {
        try (Connection connection = connectionMySQL.getConnection()) {
            PreparedStatement preparedStatement = connection.prepareStatement(DELETE_VE_BY_ID_ACCOUNT);
            preparedStatement.setInt(1, idAccount);
            return preparedStatement.execute();
        } catch (SQLException e) {
            printSQLException(e);
            return false;
        }
    }
    public boolean deleteVeById(int idVe){
        try (Connection connection = connectionMySQL.getConnection()) {
            PreparedStatement preparedStatement = connection.prepareStatement(DELETE_VE_BY_ID);
            preparedStatement.setInt(1, idVe);
            return preparedStatement.execute();
        } catch (SQLException e) {
            printSQLException(e);
            return false;
        }
    }
    @Override
    public Ve selectVe(int id) {
        return null;
    }

    @Override
    public List<Ve> selectAllVe() {
        ArrayList<Ve> ves = new ArrayList<>();
        try(Connection connection = connectionMySQL.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_VE)){
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int idVe = resultSet.getInt("idVe");
                Film film = FilmService.findFilm(resultSet.getInt("idPhim"));
                Ghe ghe = GheService.findGhe(resultSet.getInt("idGhe"));
                Account account = AccountService.findAccount(resultSet.getInt("idAccount"));
                ves.add(new Ve(idVe, film, ghe, account));
            }

        } catch (SQLException e) {
            printSQLException(e);
        }
        return ves;
    }

    @Override
    public boolean deleteVe(int id) throws SQLException {
        return false;
    }

    @Override
    public boolean updateVe(Ve ve) throws SQLException {
        return false;
    }
    private void printSQLException(SQLException ex) {
        for (Throwable e : ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}
