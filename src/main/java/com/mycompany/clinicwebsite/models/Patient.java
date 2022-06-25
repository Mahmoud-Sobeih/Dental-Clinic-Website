/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.clinicwebsite.models;

/**
 *
 * @author User
 */
public class Patient {
    private String name;
    private String email;
    private String password;
    private String address;
    private String gender;
    private String job;
    private String doctor;
    private String birthday;
    private String bookingDate;
    private String bookingTime;
    private int phone;
    
    public void setName(String name){
        this.name = name;
    }
    public String getName(){
        return name;
    }
    
    public void setEmail(String email){
        this.email = email;
    }
    public String getEmail(){
        return email;
    }
    
    public void setPassword(String password){
        this.password = password;
    }
    public String getPassword(){
        return password;
    }
    
    public void setPhone(int phone){
        this.phone = phone;
    }
    public int getPhone(){
        return phone;
    }
    
    public void setAddress(String address){
        this.address = address;
    }
    public String getAddress(){
        return address;
    }
    
    public void setBirthday(String birthday){
        this.birthday = birthday;
    }
    public String getBirthday(){
        return birthday;
    }
    
    public void setGender(String gender){
        this.gender = gender;
    }
    public String getGender(){
        return gender;
    }
    
    public void setJob(String job){
        this.job = job;
    }
    public String getJob(){
        return job;
    }
    
    public void setDoctor(String doctor){
        this.doctor = doctor;
    }
    public String getDoctor(){
        return doctor;
    }
    
    public void setBookingDate(String bookingDate){
        this.bookingDate = bookingDate;
    }
    public String getBookingDate(){
        return bookingDate;
    }
    
    public void setBookingTime(String bookingTime){
        this.bookingTime = bookingTime;
    }
    public String getBookingTime(){
        return bookingTime;
    }
    
}
