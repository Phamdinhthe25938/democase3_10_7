package Modal;

public class Comment {
    private int idcomentt;
    private String account;
    private String content;
    private String cinema;
    private String time;
    private int idphim;
    private int star;


    public Comment(String account, String content, String cinema, int star, int idphim) {
        this.account = account;
        this.content = content;
        this.cinema = cinema;
        this.star = star;
        this.idphim=idphim;

    }

    public Comment(int idcomentt, String account, String content, String cinema, int star,String time,  int idphim) {
        this.idcomentt = idcomentt;
        this.account = account;
        this.content = content;
        this.cinema = cinema;
        this.star = star;
        this.time = time;
        this.idphim = idphim;

    }

    public int getIdphim() {
        return idphim;
    }


    public Comment() {
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public int getIdcomentt() {
        return idcomentt;
    }

    public int getStar() {
        return star;
    }

    public void setStar(int star) {
        this.star = star;
    }

    public String getCinema() {
        return cinema;
    }

    public void setCinema(String cinema) {
        this.cinema = cinema;
    }



    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
