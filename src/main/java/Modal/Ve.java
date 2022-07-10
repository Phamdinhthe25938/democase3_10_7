package Modal;

public class Ve {
    private int idVe;
    private Account account;
    private Film film;
    private Ghe ghe;
    public Ve() {
    }

    public Ve(int idVe, Film film,Ghe ghe,Account account){
        this.idVe = idVe;
        this.account = account;
        this.film = film;
        this.ghe = ghe;
    }

    public Ve(Film film, Ghe ghe, Account account){
        this.film = film;
        this.ghe = ghe;
        this.account = account;
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
