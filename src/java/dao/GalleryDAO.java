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
import model.Gallery;

/**
 *
 * @author hoandk
 */
public class GalleryDAO extends DBContext {

    //get all gallery
    public ArrayList<Gallery> getAllGallery() {
        ArrayList<Gallery> list = new ArrayList<>();
        String sql = "SELECT [id] ,[title] ,[description] ,[name],[view], [url_image]\n"
                + "FROM [galery]";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Gallery d = new Gallery();
                d.setID(rs.getInt("id"));
                d.setTitle(rs.getString("title"));
                d.setDescription(rs.getString("description"));
                d.setName(rs.getString("name"));
                d.setView(rs.getString("view"));
                d.setImage(rs.getString("url_image"));
                list.add(d);
            }
        } catch (SQLException ex) {
            Logger.getLogger(GalleryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
//get gallery by id
    public Gallery getGalleryByID(int id) {
        Gallery d = new Gallery();
        try {
            String sql = "SELECT [id]\n"
                    + "      ,[title]\n"
                    + "      ,[description]\n"
                    + "      ,[name]\n"
                    + "      ,[view]\n"
                    + "      ,[url_image]\n"
                    + "  FROM [dbo].[galery] WHERE id=" + id + "";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                d.setID(rs.getInt("id"));
                d.setTitle(rs.getString("title"));
                d.setDescription(rs.getString("description"));
                d.setName(rs.getString("name"));
                d.setView(rs.getString("view"));
                d.setImage(rs.getString("url_image"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(GalleryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return d;
    }
//get top 3 gallery
    public ArrayList<Gallery> getTop3Gallery() {
        ArrayList<Gallery> list = new ArrayList<>();
        String sql = "SELECT Top 3 [id] ,[title] ,[description] ,[name],[view], [url_image]\n"
                + "FROM galery\n"
                + "order by [view] DESC\n";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);

            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Gallery d = new Gallery();
                d.setID(rs.getInt("ID"));
                d.setTitle(rs.getString("title"));
                d.setDescription(rs.getString("description"));
                d.setName(rs.getString("name"));
                d.setView(rs.getString("view"));
                d.setImage(rs.getString("url_image"));
                list.add(d);
            }
        } catch (SQLException ex) {
            Logger.getLogger(GalleryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
//update +1 view
    public void update(int id) {
        try {
            String sql = "UPDATE galery\n"
                    + "   SET [view] = [view] +  1\n"
                    + " where id = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(GalleryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
