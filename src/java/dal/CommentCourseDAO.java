/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Date;
import model.User;
import model.CommentCourse;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
public class CommentCourseDAO extends DBContext {

    public List<CommentCourse> getCommentCourse(int id) {
        List<CommentCourse> list = new ArrayList<>();
        try {
            String sql = "  Select * from [CommentCourse] as CC\n"
                    + "                    Join [User] as US on CC.[user_id] =US.User_Id\n"
                    + "                    Join [Course] as CO on CC.course_id =CO.Course_id \n"
                    + "                    where CC.comment_repply=0 and CO.Course_id=?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new CommentCourse(new User(rs.getInt(9), rs.getString(10),
                        rs.getString(12), rs.getInt(13)), rs.getInt(1),
                        rs.getInt(3), rs.getInt(2), rs.getString(4),
                        rs.getDate(5), rs.getInt(6), rs.getInt(7), rs.getString(8)));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<CommentCourse> getReplyCommentCourse(int id) {
        List<CommentCourse> list = new ArrayList<>();
        try {
            String sql = "Select * from [CommentCourse] as CC\n"
                    + "                                        Join [User] as US on CC.[user_id] =US.User_Id\n"
                    + "                                        Join [Course] as CO on CC.course_id =CO.Course_id\n"
                    + "                                        where CC.comment_repply>0 and CO.Course_id=?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new CommentCourse(new User(rs.getInt(9), rs.getString(10),
                        rs.getString(12), rs.getInt(13)), rs.getInt(1),
                        rs.getInt(3), rs.getInt(2), rs.getString(4),
                        rs.getDate(5), rs.getInt(6), rs.getInt(7), rs.getString(8)));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public void rateCommentCourse(int id) {
        String sql = "UPDATE [dbo].[CommentCourse]\n"
                + "   SET \n"
                + "      [comment_like] +=1\n"
                + " WHERE [comment_id]=? ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            st.executeUpdate();
        } catch (SQLException e) {
        }
    }

    public void addCommentCourse2(CommentCourse d,int id) {
        String sql = "INSERT INTO [dbo].[CommentCourse]\n"
                + "           ([user_id]\n"
                + "           ,[course_id]\n"
                + "           ,[comment_detail]\n"
                + "           ,[comment_date]\n"
                + "           ,[comment_repply])\n"
                + "     VALUES\n"
                + "           (?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, d.getUser().getUser_id());
            st.setInt(2, d.getCourse_id());
            st.setString(3, d.getCommentc_detail());
            long millis = System.currentTimeMillis();
            Date date = new Date(millis);
            st.setDate(4, date);
            st.setInt(5, id);
            st.executeUpdate();
        } catch (SQLException e) {
        }
    }

    public void addCommentCourse(CommentCourse d) {
        String sql = "INSERT INTO [dbo].[CommentCourse]\n"
                + "           ([user_id]\n"
                + "           ,[course_id]\n"
                + "           ,[comment_detail]\n"
                + "           ,[comment_date]\n"
                + "           ,[comment_image])\n"
                + "     VALUES(?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, d.getUser().getUser_id());
            st.setInt(2, d.getCourse_id());
            st.setString(3, d.getCommentc_detail());
            long millis = System.currentTimeMillis();
            Date date = new Date(millis);
            st.setDate(4, date);
            st.setString(5, d.getCommentc_image());
            st.executeUpdate();
        } catch (SQLException e) {
        }
    }

    public static void main(String[] args) {
        CommentCourseDAO d = new CommentCourseDAO();
        CommentCourse com = new CommentCourse(new User(1, "kienpt", "123", 1), 1,
                "reply1");
        d.addCommentCourse2(com,1);
    }
}
