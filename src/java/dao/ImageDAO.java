/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Image;

/**
 *
 * @author hoandk
 */
public class ImageDAO extends DBContext {

    public ArrayList<Image> getImagesByID(int id) {
        ArrayList<Image> list = new ArrayList<>();
        String sql = "SELECT id,image_url,[view]\n"
                + "FROM image\n"
                + "WHERE idgalery = ?";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Image c = new Image();
                c.setId(rs.getInt("id"));
                c.setImage_url(rs.getString("image_url"));
                c.setView(rs.getString("view"));
                list.add(c);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ImageDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public void update(int id) {
        try {
            String sql = "UPDATE image\n"
                    + "   SET [view] = [view] +  1\n"
                    + " where id = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ImageDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
