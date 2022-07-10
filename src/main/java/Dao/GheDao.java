package Dao;

import Connect.ConnectionMySQL;
import Dao.Iterface.IGheDao;
import Modal.Ghe;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class GheDao implements IGheDao {
    private static final String
            INSERT_GHE_SQL =
            "INSERT INTO ghe (idGhe,tenGhe) VALUES (?, ?);";
    private static final String SELECT_ALL_GHE = "SELECT * FROM ghe";

    ConnectionMySQL connectionMySQL = new ConnectionMySQL();

    @Override
    public void insertGhe(Ghe ghe) throws SQLException {
        try (Connection connection = connectionMySQL.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_GHE_SQL)
        ) {
            preparedStatement.setInt(1, ghe.getIdGhe());
            preparedStatement.setString(2, ghe.getTenGhe());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
    }

    @Override
    public Ghe selectGhe(int id) {
        return null;
    }

    @Override
    public List<Ghe> selectAllGhes() {
        ArrayList<Ghe> ghes = new ArrayList<>();
        try (Connection connection = connectionMySQL.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_GHE)
        ) {
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int idGhe = resultSet.getInt("idGhe");
                String tenGhe = resultSet.getString("tenGhe");
                ghes.add(new Ghe(idGhe, tenGhe));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return ghes;
    }
    @Override
    public boolean deleteGhe(int id) throws SQLException {
        return false;
    }

    @Override
    public boolean updateGhe(Ghe ghe) throws SQLException {
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
