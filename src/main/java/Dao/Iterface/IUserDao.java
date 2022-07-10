package Dao.Iterface;

import Modal.Account;

import java.sql.SQLException;
import java.util.List;

public interface IUserDao {
    void insertAccount(Account account) throws SQLException;

    Account selectAccount (int id);

    List<Account> selectAllAccounts ();

    boolean deleteAccount (int id) throws SQLException;

    boolean updateAccount (Account account) throws SQLException;
}
