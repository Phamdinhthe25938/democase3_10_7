package Modal;

import java.sql.Date;

public class LichSuMuaVe {
    private int idVe;
    private Account account;
    private Film film;
    private Ghe ghe;

    private Date ngayMua;
    public LichSuMuaVe() {
    }

    public LichSuMuaVe(int idVe, Film film,Ghe ghe,Account account,Date ngayMua){
        this.idVe = idVe;
        this.account = account;
        this.film = film;
        this.ghe = ghe;
        this.ngayMua=ngayMua;
    }

    public LichSuMuaVe(Film film, Ghe ghe, Account account,Date ngayMua){
        this.film = film;
        this.ghe = ghe;
        this.account = account;
        this.ngayMua=ngayMua;
    }

    public Date getNgayMua() {
        return ngayMua;
    }

    public void setNgayMua(Date ngayMua) {
        this.ngayMua = ngayMua;
    }

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

    public Film getFilm() {
        return film;
    }

    public void setFilm(Film film) {
        this.film = film;
    }

    public Ghe getGhe() {
        return ghe;
    }

    public void setGhe(Ghe ghe) {
        this.ghe = ghe;
    }

    public int getIdVe() {
        return idVe;
    }
    public void setIdVe(int idVe) {
        this.idVe = idVe;
    }
}
