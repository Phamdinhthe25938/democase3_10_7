package Dao;

import Connect.ConnectionMySQL;
import Modal.Comment;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class CommentDao {
    ConnectionMySQL connectionMySQL = new ConnectionMySQL();

    public void insertComment(Comment comment) {
        String insert = "INSERT INTO comment(account,content,tenphim,sao,idphim) VALUES (?,?,?,?,?)";
        try (Connection connection = connectionMySQL.getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(insert)) {
            preparedStatement.setString(1, comment.getAccount());
            preparedStatement.setString(2, comment.getContent());
            preparedStatement.setString(3, comment.getCinema());
            preparedStatement.setInt(4, comment.getStar());
            preparedStatement.setInt(5,comment.getIdphim());
            preparedStatement.execute();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public ArrayList<Comment> allComment() {
        String allcomment = "SELECT*FROM comment";
        ArrayList<Comment> arrayList = new ArrayList<>();
        try (Connection connection = connectionMySQL.getConnection()) {
            PreparedStatement preparedStatement = connection.prepareStatement(allcomment);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                String account = resultSet.getString("account");
                String comment = resultSet.getString("content");
                String cinems = resultSet.getString("tenphim");
                int star = resultSet.getInt("sao");
                int idphim = resultSet.getInt("idphim");
                arrayList.add(new Comment(account, comment, cinems, star, idphim ));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return arrayList;
    }

    public ArrayList<Comment> full_allComment() {
        String allcomment = "SELECT*FROM comment";
        ArrayList<Comment> arrayList = new ArrayList<>();
        try (Connection connection = connectionMySQL.getConnection()) {
            PreparedStatement preparedStatement = connection.prepareStatement(allcomment);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("idcomment");
                String account = resultSet.getString("account");
                String comment = resultSet.getString("content");
                String cinems = resultSet.getString("tenphim");
                int star = resultSet.getInt("sao");
                String time = resultSet.getString("thoigian");
                int idphim = resultSet.getInt("idphim");
                arrayList.add(new Comment(id, account, comment, cinems,star, time, idphim));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return arrayList;
    }
}
