package Dao;

import Connect.ConnectionMySQL;
import Dao.Iterface.IUserDao;
import Modal.Account;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserDao implements IUserDao {

     ConnectionMySQL connectionMySQL = new ConnectionMySQL();
    private  static final  String
            INSERT_ACCOUNT_SQL =
            "INSERT INTO account (userName,birthdayUser,numberUser,mailUser,passwordUser,addressUser) VALUES (?, ?, ?, ?, ?, ?);";
    private static final String SELECT_ALL_ACCOUNT ="SELECT * FROM account";

    @Override
    public void insertAccount(Account account) throws SQLException {
        try(Connection connection = connectionMySQL.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_ACCOUNT_SQL)
        ){
            preparedStatement.setString(1,account.getUserName());
            preparedStatement.setDate(2,account.getBirthdayUser());
            preparedStatement.setInt(3,account.getNumberUser());
            preparedStatement.setString(4,account.getMailUser());
            preparedStatement.setString(5,account.getPasswordUser());
            preparedStatement.setString(6,account.getAddressUser());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
        printSQLException(e);
    }

}
    @Override
    public Account selectAccount(int id) {
       return null;
    }

    @Override
    public List<Account> selectAllAccounts() {
        ArrayList<Account> accounts = new ArrayList<>();
        try(Connection connection = connectionMySQL.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_ACCOUNT)
        ){
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int id = resultSet.getInt("id");
                String userName = resultSet.getString("userName");
                Date birthdayUser= resultSet.getDate("birthdayUser");
                int numberUser = resultSet.getInt("numberUser");
                String mailUser = resultSet.getString("mailUser");
                String passwordUser = resultSet.getString("passwordUser");
                String addressUser = resultSet.getString("addressUser");
                int statusUser = resultSet.getInt("statusUser");
                accounts.add(new Account(id,userName,birthdayUser,numberUser,mailUser,passwordUser,addressUser,statusUser));
            }
        }
        catch (SQLException e) {
            printSQLException(e);
        }

        return accounts;
    }

    @Override
    public boolean deleteAccount(int id) throws SQLException {
        return false;
    }

    @Override
    public boolean updateAccount(Account account) throws SQLException {
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
