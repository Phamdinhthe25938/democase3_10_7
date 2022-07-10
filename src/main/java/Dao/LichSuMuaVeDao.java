package Dao;

import Connect.ConnectionMySQL;
import Dao.Iterface.ILichSuMuaVeDao;
import Modal.*;
import Service.AccountService;
import Service.FilmService;
import Service.GheService;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class LichSuMuaVeDao implements ILichSuMuaVeDao {
    ConnectionMySQL connectionMySQL = new ConnectionMySQL();
    private  static final  String
            INSERT_VE_ENTER_LSMV_SQL = "INSERT INTO velichsumua(idVe,idPhim,idGhe,idAccount,ngayMua) VALUES (?,?, ?, ?,?);";
    private static final String SELECT_ALL_VE_LSMV ="SELECT * FROM velichsumua";

    private static final String SELECT_QUANTITY_VE_BY_ID_FILM = "select count(idVe) as quantity from velichsumua where idPhim=?";

    private static final String SELECT_QUANTITY_VE_SOLD="select count(idVe) as quantityVeSold from velichsumua";
    private static final String SELECT_QUANTITY_ACCOUNT_BUY_VE= "select count(idAccount) as quantityAccount from velichsumua group by idAccount";

    private static final String SELECT_QUANTITY_IDACCOUNT_BUY_VE = "select idAccount as idAccountSoldVe from velichsumua group by idAccount";

    private static final String SELECT_ID_GHE_BUY_ID_PHIM= "select idGhe as idGheByIdPhim  from velichsumua where idPhim=?";

     public ArrayList<Integer> listIdGheByIdPhim(int idPhim){
         ArrayList<Integer> listIdGheByIdPhim = new ArrayList<>();
        try( Connection connection =connectionMySQL.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ID_GHE_BUY_ID_PHIM)){
            preparedStatement.setInt(1,idPhim);
            ResultSet resultSet =preparedStatement.executeQuery();
            while (resultSet.next()){
                int idGhe = resultSet.getInt("idGheByIdPhim");
                listIdGheByIdPhim.add(idGhe);
            }
            return listIdGheByIdPhim;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
     }
    @Override
    public void insertLichSuMuaVe(LichSuMuaVe ve) throws SQLException {
        try( Connection connection =connectionMySQL.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_VE_ENTER_LSMV_SQL)){
            preparedStatement.setInt(1,ve.getIdVe());
            preparedStatement.setInt(2,ve.getFilm().getIdPhim());
            preparedStatement.setInt(3,ve.getGhe().getIdGhe());
            preparedStatement.setInt(4,ve.getAccount().getId());
            preparedStatement.setDate(5,ve.getNgayMua());
            preparedStatement.executeUpdate();
        }
        catch (SQLException e){
            printSQLException(e);
        }
    }
    public int quantityTicket(int idPhim){
        int quantities ;
        try(Connection connection = connectionMySQL.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_QUANTITY_VE_BY_ID_FILM)){
            preparedStatement.setInt(1,idPhim);
            ResultSet resultSet =preparedStatement.executeQuery();
            resultSet.next();
            quantities =resultSet.getInt("quantity");
            return quantities;

        } catch (SQLException e){
        }
        return 0;
    }
    @Override
    public Ve selectLichSuMuaVe(int id) {
        return null;
    }

    @Override
    public List<LichSuMuaVe> selectAllVe() {
        ArrayList<LichSuMuaVe> ves = new ArrayList<>();
        try(Connection connection = connectionMySQL.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_VE_LSMV)){
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int idVe = resultSet.getInt("idVe");
                Film film = FilmService.findFilm(resultSet.getInt("idPhim"));
                Ghe ghe = GheService.findGhe(resultSet.getInt("idGhe"));
                Account account = AccountService.findAccount(resultSet.getInt("idAccount"));
                Date date = resultSet.getDate("ngayMua");
                ves.add(new LichSuMuaVe(idVe,film,ghe,account,date));
            }

        } catch (SQLException e) {
            printSQLException(e);
        }
        return ves;
    }

    public int quantityAccountBuyVe() {
        int quantities ;
        try (Connection connection = connectionMySQL.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_QUANTITY_ACCOUNT_BUY_VE)){
            ResultSet resultSet =preparedStatement.executeQuery();
            resultSet.next();
            quantities =resultSet.getInt("quantityAccount");
            return quantities;
        } catch (SQLException e) {
            printSQLException(e);
        }
        return 0;
    }
    public int quantityVeSold(){
        int quantities ;
        try (Connection connection = connectionMySQL.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_QUANTITY_VE_SOLD)) {
            ResultSet resultSet =preparedStatement.executeQuery();
            resultSet.next();
            quantities =resultSet.getInt("quantityVeSold");
            return quantities;
        } catch (SQLException e) {
            printSQLException(e);
        }
        return 0;
    }
    public ArrayList<Integer> listIdAccountSoldVe(){
        ArrayList<Integer> listId = new ArrayList<>();
        try (Connection connection = connectionMySQL.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_QUANTITY_IDACCOUNT_BUY_VE)){
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
             int id = resultSet.getInt("idAccountSoldVe");
             listId.add(id);
            }
            return listId;
        } catch (SQLException e){
            printSQLException(e);
        }
        return null;
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
