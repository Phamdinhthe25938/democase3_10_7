package Service;

import Dao.LichSuMuaVeDao;
import Dao.UserDao;
import Modal.Account;

import java.util.ArrayList;
import java.util.List;

public class AccountService {

   static LichSuMuaVeDao lichSuMuaVeDao = new LichSuMuaVeDao();

    static public UserDao userDao = new UserDao();

    static public ArrayList<Account> accounts = (ArrayList<Account>) userDao.selectAllAccounts();
    static public Account findAccount(int id){
        for(int i=0;i<accounts.size();i++){
            if(accounts.get(i).getId()==id){
                return accounts.get(i);
            }
        }
        return null;
    }
    static public int findIdAccountByName(String name){
        for(int i=0;i<accounts.size();i++){
            if(accounts.get(i).getUserName().equals(name)){
                return accounts.get(i).getId();
            }
        }
        return 0;
    }
    static  public ArrayList<Account> listAccountSoldVe(){
        ArrayList<Account> accounts1 = new ArrayList<>();
        for (int i=0;i<lichSuMuaVeDao.listIdAccountSoldVe().size();i++){
            for(int j=0;j<AccountService.accounts.size();j++){
                if(AccountService.accounts.get(j).getId()==lichSuMuaVeDao.listIdAccountSoldVe().get(i)){
                    accounts1.add(AccountService.accounts.get(j));
                }
            }
        }
        return accounts1;
    }
}
