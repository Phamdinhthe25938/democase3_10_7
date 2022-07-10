package Modal;

import java.sql.Date;

public class Film {
    private int idPhim;

    private String tenPhim;

    private String thoiGian ;

    private String loaiPhim;

    private String daoDien;

    private String quocGia;

    private String dienVien;

    private String nhaSX;

    private Date ngayKhoiChieu;

    private String moTa;

    private String trailer;

    private String img;

    private int giaPhim;

    private double star;

    public Film(int idPhim, String tenPhim, String thoiGian, String loaiPhim, String daoDien, String quocGia, String dienVien, String nhaSX, Date ngayKhoiChieu, String moTa, String trailer,String img,int giaPhim) {
        this.idPhim = idPhim;
        this.tenPhim = tenPhim;
        this.thoiGian = thoiGian;
        this.loaiPhim = loaiPhim;
        this.daoDien = daoDien;
        this.quocGia = quocGia;
        this.dienVien = dienVien;
        this.nhaSX = nhaSX;
        this.ngayKhoiChieu = ngayKhoiChieu;
        this.moTa = moTa;
        this.trailer = trailer;
        this.img=img;
        this.giaPhim=giaPhim;
    }

    public Film(String tenPhim, String thoiGian, String loaiPhim, String daoDien, String quocGia, String dienVien, String nhaSX, Date ngayKhoiChieu, String moTa, String trailer, String img, int giaPhim, double star) {
        this.tenPhim = tenPhim;
        this.thoiGian = thoiGian;
        this.loaiPhim = loaiPhim;
        this.daoDien = daoDien;
        this.quocGia = quocGia;
        this.dienVien = dienVien;
        this.nhaSX = nhaSX;
        this.ngayKhoiChieu = ngayKhoiChieu;
        this.moTa = moTa;
        this.trailer = trailer;
        this.img = img;
        this.giaPhim = giaPhim;
        this.star = star;
    }

    public Film(int idPhim, String tenPhim, String thoiGian, String loaiPhim, String daoDien, String quocGia, String dienVien, String nhaSX, Date ngayKhoiChieu, String moTa, String trailer, String img, double star) {
        this.idPhim = idPhim;
        this.tenPhim = tenPhim;
        this.thoiGian = thoiGian;
        this.loaiPhim = loaiPhim;
        this.daoDien = daoDien;
        this.quocGia = quocGia;
        this.dienVien = dienVien;
        this.nhaSX = nhaSX;
        this.ngayKhoiChieu = ngayKhoiChieu;
        this.moTa = moTa;
        this.trailer = trailer;
        this.img = img;
        this.star = star;
    }

    public Film(int idPhim, String tenPhim, String thoiGian, String loaiPhim, String daoDien, String quocGia, String dienVien, String nhaSX, Date ngayKhoiChieu, String moTa, String trailer, String img, int giaPhim, double star) {
        this.idPhim = idPhim;
        this.tenPhim = tenPhim;
        this.thoiGian = thoiGian;
        this.loaiPhim = loaiPhim;
        this.daoDien = daoDien;
        this.quocGia = quocGia;
        this.dienVien = dienVien;
        this.nhaSX = nhaSX;
        this.ngayKhoiChieu = ngayKhoiChieu;
        this.moTa = moTa;
        this.trailer = trailer;
        this.img = img;
        this.giaPhim = giaPhim;
        this.star = star;
    }

    public double getStar() {
        return star;
    }


    public int getGiaPhim() {
        return giaPhim;
    }

    public void setGiaPhim(int giaPhim) {
        this.giaPhim = giaPhim;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public int getIdPhim() {
        return idPhim;
    }

    public void setIdPhim(int idPhim) {
        this.idPhim = idPhim;
    }

    public String getTenPhim() {
        return tenPhim;
    }

    public void setTenPhim(String tenPhim) {
        this.tenPhim = tenPhim;
    }

    public String getThoiGian() {
        return thoiGian;
    }

    public void setThoiGian(String thoiGian) {
        this.thoiGian = thoiGian;
    }

    public String getLoaiPhim() {
        return loaiPhim;
    }

    public void setLoaiPhim(String loaiPhim) {
        this.loaiPhim = loaiPhim;
    }

    public String getDaoDien() {
        return daoDien;
    }

    public void setDaoDien(String daoDien) {
        this.daoDien = daoDien;
    }

    public String getQuocGia() {
        return quocGia;
    }

    public void setQuocGia(String quocGia) {
        this.quocGia = quocGia;
    }

    public String getDienVien() {
        return dienVien;
    }

    public void setDienVien(String dienVien) {
        this.dienVien = dienVien;
    }

    public String getNhaSX() {
        return nhaSX;
    }

    public void setNhaSX(String nhaSX) {
        this.nhaSX = nhaSX;
    }

    public Date getNgayKhoiChieu() {
        return ngayKhoiChieu;
    }

    public void setNgayKhoiChieu(Date ngayKhoiChieu) {
        this.ngayKhoiChieu = ngayKhoiChieu;
    }

    public String getMoTa() {
        return moTa;
    }

    public void setMoTa(String moTa) {
        this.moTa = moTa;
    }

    public String getTrailer() {
        return trailer;
    }

    public void setTrailer(String trailer) {
        this.trailer = trailer;
    }
}
