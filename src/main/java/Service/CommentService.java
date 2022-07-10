package Service;

import Connect.ConnectionMySQL;
import Dao.CommentDao;
import Modal.Comment;

import java.util.ArrayList;

public class CommentService {
    static CommentDao commentDao = new CommentDao();
    public static ArrayList<Comment> comments = commentDao.allComment();


    public ArrayList<Comment> Create_Comnent(Comment comment){
        comments.add(comment);
        commentDao.insertComment(comment);
        return comments;
    }

}
