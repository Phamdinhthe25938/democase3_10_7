package Modal;

public class Reply {
    private int idcomment;
    private String account;
    private String comment;

    private String thoigian;

    public Reply() {
    }

    public Reply(int idcomment, String comment, String account) {
        this.idcomment = idcomment;
        this.account = account;
        this.comment = comment;
    }

    public Reply(int idcomment, String account, String comment, String thoigian) {
        this.idcomment = idcomment;
        this.account = account;
        this.comment = comment;
        this.thoigian = thoigian;
    }

    public String getThoigian() {
        return thoigian;
    }

    public void setThoigian(String thoigian) {
        this.thoigian = thoigian;
    }

    public int getIdcomment() {
        return idcomment;
    }

    public void setIdcomment(int idcomment) {
        this.idcomment = idcomment;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }
}
