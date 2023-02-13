/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import model.User;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Admin
 */
public class UserDAO extends DBContext {

    public boolean checkUser(String s) {
        String sql = "SELECT  [user_name]\n"
                + "  FROM [SWP-Project].[dbo].[User]\n"
                + "  where [user_name]=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, s);
            ResultSet rs = st.executeQuery();
            if (!rs.next()) {
                return false;
            }
        } catch (SQLException e) {
        }
        return true;
    }

    public void addUser(String user, String pass) {
        String sql = "INSERT INTO [dbo].[User]\n"
                + "           ([user_name]\n"
                + "           ,[user_password])\n"
                + "     VALUES(?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, user);
            st.setString(2, pass);
            st.executeUpdate();
        } catch (SQLException e) {
            
        }
    }
    public void insertUser(User u) {
        String sql = "INSERT INTO [dbo].[User]\n"
                + "           ([user_name]\n"
                + "           ,[user_mail]\n"
                + "           ,[user_password]\n"
                + "           ,[user_role]\n"
                + "           ,[user_gender]\n"
                + "           ,[user_address]\n"
                + "           ,[user_phone]\n"
                + "           ,[user_avatar])\n"
                + "     VALUES\n"
                + "           (?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, u.getUser_name());
            st.setString(2, u.getUser_mail());
            st.setString(3, u.getUser_password());
            st.setInt(4, u.getUser_role());
            st.setInt(5, u.getUser_gender());
            st.setString(6, u.getUser_address());
            st.setString(7, u.getUser_phone());
            st.setString(8, u.getUser_avatar());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
 public User checkUserGoogle(String username) {
        String sql = "SELECT [User_Id]\n"
                + "      ,[user_name]\n"
                + "      ,[user_mail]\n"
                + "      ,[user_password]\n"
                + "      ,[user_role]\n"
                + "      ,[user_gender]\n"
                + "      ,[user_address]\n"
                + "      ,[user_phone]\n"
                + "      ,[user_avatar]\n"
                + "  FROM [dbo].[User]\n"
                + "  where user_name=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);

            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                User u = new User(rs.getInt("User_Id"), username, rs.getString("user_password"),
                        rs.getString("user_mail"), rs.getInt("user_role"),
                        rs.getInt("user_gender"), rs.getString("user_address"),
                        rs.getString("user_phone"), rs.getString("user_avatar"));
                return u;
            }
        } catch (SQLException e) {

        }
        return null;
    }
}
