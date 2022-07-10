package Service;

import Dao.CommentDao;
import Dao.ReplyDao;
import Modal.Comment;
import Modal.Reply;

import java.util.ArrayList;

public class ReplyService {

    static ReplyDao replyDao = new ReplyDao();
    public static ArrayList<Reply> replies = replyDao.allReply();


    public ArrayList<Reply> Create_reply(Reply reply){
        replies.add(reply);
        replyDao.insertReply(reply);
        return replies;
    }


}
