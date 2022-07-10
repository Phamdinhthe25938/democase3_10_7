package Dao.Iterface;

import Modal.Account;
import Modal.Ve;

import java.sql.SQLException;
import java.util.List;

public interface IVeDao {

    void insertVe(Ve ve) throws SQLException;

    Ve selectVe (int id);

    List<Ve> selectAllVe ();

    boolean deleteVe (int id) throws SQLException;

    boolean updateVe (Ve ve) throws SQLException;
}
