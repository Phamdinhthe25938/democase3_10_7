package Dao.Iterface;

import Modal.LichSuMuaVe;
import Modal.Ve;

import java.sql.SQLException;
import java.util.List;

public interface ILichSuMuaVeDao {
    void insertLichSuMuaVe(LichSuMuaVe ve) throws SQLException;

    Ve selectLichSuMuaVe (int id);

    List<LichSuMuaVe> selectAllVe ();

}
