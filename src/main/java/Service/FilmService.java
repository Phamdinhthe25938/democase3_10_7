package Service;

import Dao.FilmDao;
import Modal.Film;

import java.sql.SQLException;
import java.util.List;

public class FilmService {
    static FilmDao filmDao = new FilmDao();

    static public List<Film> films = filmDao.selectAllFilms();

    static public int vtPhim(int id){
        for(int i=0;i<films.size();i++){
            if(films.get(i).getIdPhim()==id){
                return i;
            }
        }
        return -1;
    }
    static public Film findFilm(int id){
        for(int i=0;i<films.size();i++){
            if(films.get(i).getIdPhim()==id){
                return films.get(i);
            }
        }
        return null;
    }
    public List<Film> getAll(){
        return filmDao.selectAllFilms();
    }
    public boolean create(Film film) throws SQLException {
        return filmDao.insertFilm(film);
    }
    public boolean edit(Film film) throws SQLException {
        return filmDao.updateFilm(film);
    }
    public boolean delete(int id) throws SQLException {
        return filmDao.deleteFilm(id);
    }
    public Film findById(int id){
        return filmDao.findById(id);
    }
}
