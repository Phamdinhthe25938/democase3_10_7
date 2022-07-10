package Service;

import Dao.VeDao;
import Modal.Ve;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class VeService {
   static public VeDao veDao = new VeDao();

   static  public List<Ve> ves = veDao.selectAllVe();


   static public ArrayList<Ve> listVeByIdUser(int id){
      ArrayList<Ve> vesByIdUser = new ArrayList<>();
      for (int i = 0; i < listVe().size(); i++) {
         if (ves.get(i).getAccount().getId() == id){
            vesByIdUser.add(ves.get(i));
         }
      }
      return vesByIdUser;
   }
   static public List<Ve> listVe(){
      return ves;
   }
}
