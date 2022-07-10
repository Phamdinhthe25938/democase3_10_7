package Service;

import Dao.GheDao;
import Modal.Ghe;

import java.util.ArrayList;
import java.util.List;

public class GheService {
    static GheDao gheDao = new GheDao();

    static public List<Ghe> ghes =  gheDao.selectAllGhes();

    static public Ghe findGhe(int id){
        for(int i=0;i<ghes.size();i++){
            if(ghes.get(i).getIdGhe()==id){
                return ghes.get(i);
            }
        }
        return null;
    }
}
