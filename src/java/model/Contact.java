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
public class Contact {
    
    private String telephone;
    private String email;   
    private String about;
    private String address;
    private String city;
    private String country;
    private String image_main;
    private String view;

    public Contact() {
    }

    public Contact(String telephone, String email, String about, String address, String city, String country, String image_main, String view) {
        this.telephone = telephone;
        this.email = email;
        this.about = about;
        this.address = address;
        this.city = city;
        this.country = country;
        this.image_main = image_main;
        this.view = view;
    }

    public String getView() {
        return view;
    }

    public void setView(String view) {
        this.view = view;
    }

   

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAbout() {
        return about;
    }

    public void setAbout(String about) {
        this.about = about;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getImage_main() {
        return image_main;
    }

    public void setImage_main(String image_main) {
        this.image_main = image_main;
    }
    
}
