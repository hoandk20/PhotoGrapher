/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Contact;

/**
 *
 * @author hoandk
 */
public class ContactDAO extends DBContext {

    //get contact information
    public Contact getContact() {
        String sql = "SELECT [telephone] ,[email] ,[about] ,[address]\n"
                + "      ,[city] ,[country] \n"
                + "FROM [Contact]";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            Contact c = new Contact();
            while (rs.next()) {
                c.setTelephone(rs.getString("telephone"));
                c.setEmail(rs.getString("email"));
                c.setAbout(rs.getString("about"));
                c.setAddress(rs.getString("address"));
                c.setCity(rs.getString("city"));
                c.setCountry(rs.getString("country"));

            }
            return c;
        } catch (SQLException ex) {
            Logger.getLogger(ContactDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    //update +1 view
    public void updateView() {
        try {
            String sql = "UPDATE [views] \n"
                    + "  SET [view] = [view] +  1\n"
                    + "  where id = 1";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ContactDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public int totalView() {
        String sql = "  SELECT [view]  FROM [views]";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                return rs.getInt("view");
            }
        } catch (SQLException ex) {
            Logger.getLogger(ContactDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return -1;
    }
}

