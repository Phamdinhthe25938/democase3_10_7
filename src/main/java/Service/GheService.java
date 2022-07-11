package Service;

import Dao.GheDao;
import Dao.LichSuMuaVeDao;
import Modal.Ghe;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;

public class GheService {
    static GheDao gheDao = new GheDao();

    static LichSuMuaVeDao lichSuMuaVeDao = new LichSuMuaVeDao();

    static public List<Ghe> ghes =  gheDao.selectAllGhes();

    static public Ghe findGhe(int id){
        for(int i=0;i<ghes.size();i++){
            if(ghes.get(i).getIdGhe()==id){
                return ghes.get(i);
            }
        }
        return null;
    }
    static  public HashSet<Integer> listGheDrumByIdPhim(int idPhim){
        ArrayList<Integer> listIdGheExist = lichSuMuaVeDao.listIdGheByIdPhim(idPhim);
        HashSet<Integer> listIdGheDrum= new HashSet<>();
          if(listIdGheExist.size()==0){
              for (int j=1;j<=50;j++){
                  listIdGheDrum.add(j);
              }
          }else {
              for (int i=0;i<listIdGheExist.size();i++){
                  for (int j=1;j<=50;j++){
                      if(j==listIdGheExist.get(i)){
                          continue;
                      }
                      else {
                          listIdGheDrum.add(j);
                      }
                  }
              }
          }
            return listIdGheDrum;
        }
}
