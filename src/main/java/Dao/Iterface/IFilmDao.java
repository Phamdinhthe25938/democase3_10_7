package Dao.Iterface;

import Modal.Account;
import Modal.Film;

import java.sql.SQLException;
import java.util.List;

public interface IFilmDao {
    List<Film> selectAllFilms ();

    boolean insertFilm(Film film) throws SQLException;

    boolean updateFilm(Film film) throws SQLException;

    boolean deleteFilm(int id) throws SQLException ;

    Film findById(int id);



}
