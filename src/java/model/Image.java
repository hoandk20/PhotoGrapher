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
public class Image {

    private int id;
    private int idGalery;
    private String image_url;
    private String view;

    public Image() {
    }

    public Image(int id, int idGalery, String image_url, String view) {
        this.id = id;
        this.idGalery = idGalery;
        this.image_url = image_url;
        this.view = view;
    }

    public String getView() {
        return view;
    }

    public void setView(String view) {
        this.view = view;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdGalery() {
        return idGalery;
    }

    public void setIdGalery(int idGalery) {
        this.idGalery = idGalery;
    }

    public String getImage_url() {
        return image_url;
    }

    public void setImage_url(String image_url) {
        this.image_url = image_url;
    }

}
