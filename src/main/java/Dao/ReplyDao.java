package Dao;

import Connect.ConnectionMySQL;
import Modal.Reply;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ReplyDao {
    ConnectionMySQL connectionMySQL = new ConnectionMySQL();

    public void insertReply(Reply reply) {
        String insert = "INSERT INTO reply(idcomment,conntentreply,account) VALUES (?,?,?)";
        try (Connection connection = connectionMySQL.getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(insert)) {
            preparedStatement.setInt(1, reply.getIdcomment());
            preparedStatement.setString(2, reply.getComment());
            preparedStatement.setString(3, reply.getAccount());
            preparedStatement.execute();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }


    public ArrayList<Reply> allReply() {
        String allcomment = "SELECT*FROM reply";
        ArrayList<Reply> arrayList = new ArrayList<>();
        try (Connection connection = connectionMySQL.getConnection()) {
            PreparedStatement preparedStatement = connection.prepareStatement(allcomment);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int idcomment = resultSet.getInt("idcomment");
                String comment = resultSet.getString("conntentreply");
                String thoigian = resultSet.getString("thoigianreply");
                String account = resultSet.getString("account");
                arrayList.add(new Reply(idcomment, account, comment, thoigian));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return arrayList;
    }

}
