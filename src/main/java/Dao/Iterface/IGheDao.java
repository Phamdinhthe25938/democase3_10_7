package Dao.Iterface;

import Modal.Film;
import Modal.Ghe;

import java.sql.SQLException;
import java.util.List;

public interface IGheDao {
    void insertGhe(Ghe ghe) throws SQLException;

    Ghe selectGhe (int id);

    List<Ghe> selectAllGhes ();

    boolean deleteGhe(int id) throws SQLException;

    boolean updateGhe(Ghe ghe) throws SQLException;
}
