/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Percentage;

/**
 *
 * @author mylov
 */
public class PercentageDAO extends DBContext {

    public List<Percentage> getPercentageByUserID(int user_id) {

        List<Percentage> list = new ArrayList<>();
        String sql = "SELECT *\n"
                + "  FROM [SWP-Project].[dbo].[Percentage] where user_id =?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, user_id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Percentage p = new Percentage(user_id, rs.getInt(2), rs.getInt(3));
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public int checkPercentageByUserID(int lessonId, int userId) {
        int number = 0;
        String sql = "SELECT percentage\n"
                + "  FROM [SWP-Project].[dbo].[Percentage] where lesson_id =? and user_id =?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, lessonId);
            st.setInt(2, userId);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
               number = rs.getInt(1);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return number;
    }
    public static void main(String[] args) {
        PercentageDAO pd = new PercentageDAO();
        System.out.println(pd.checkPercentageByUserID(2, 1));
    }
    public void addPercentage(int userId, int lessonId, int percentage) {
        String sql = "INSERT INTO [dbo].[Percentage]\n"
                + "           ([User_Id]\n"
                + "           ,[lesson_id]\n"
                + "           ,[percentage])\n"
                + "     VALUES\n"
                + "           (?,?,?)\n";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, userId);
            st.setInt(2, lessonId);
            st.setInt(3, percentage);
            st.executeUpdate();
        } catch (SQLException e) {
        }
    }
    
}
