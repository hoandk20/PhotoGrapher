/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author hoandk
 */
public class Gallery {
     private int ID;
    private String title;
    private String description;
    private String name;
    private String image;
    private String view;
    private Image i;

    public Gallery() {
    }

    public Gallery(int ID, String title, String description, String name, String image, String view, Image i) {
        this.ID = ID;
        this.title = title;
        this.description = description;
        this.name = name;
        this.image = image;
        this.view = view;
        this.i = i;
    }

    public String getView() {
        return view;
    }

    public void setView(String view) {
        this.view = view;
    }

    

    public Image getI() {
        return i;
    }

    public void setI(Image i) {
        this.i = i;
    }

   

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}

