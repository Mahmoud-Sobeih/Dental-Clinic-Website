/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.clinicwebsite.controllers;

import com.mycompany.clinicwebsite.models.Patient;
import com.mycompany.clinicwebsite.models.PatientDemo;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author User
 */
@Controller
public class FirstController {

    @Autowired
    PatientDemo patientDemo;

    @RequestMapping("/index")
    public String displayIndex() {
        return "index.jsp";
    }

    @RequestMapping("/about-us")
    public String displayAbout() {
        return "about.jsp";
    }

    @RequestMapping("/log-in")
    public String displayLogin(@ModelAttribute("patient") Patient patient) {
        return "login.jsp";
    }

    @RequestMapping("/profile")
    public String displayProfile(@ModelAttribute("patient") Patient patient, Model model, HttpSession session) {
        if (session.getAttribute("user") == null) {
            List<Patient> list = patientDemo.authentication(patient);
            if (list.isEmpty()) {
                model.addAttribute("message", "Error in userName or password!!");
                return "errorpage.jsp";
            } else {
                session.setAttribute("user", patient.getEmail());
                if (session.getAttribute("user").equals("admin")) {
                    return "appointmentssearch.jsp";
                }
                return "profile.jsp";
            }
        } else {
            return "profile.jsp";
        }
    }

    @RequestMapping("/sign-up")
    public String displaysignup(Model model) {
        return "signup.jsp";
    }

    @RequestMapping("/confirm-sign-up")
    public String confirmSignup(@ModelAttribute("patient") Patient patient, HttpServletRequest req, Model model) {
        if (req.getParameter("password").equals(req.getParameter("confirmPassword"))) {
            int checkUpdate = patientDemo.insertUser(patient);
            if (checkUpdate != 0) {
                return "login.jsp";
            }else{
                model.addAttribute("message", "This email may by exist please change this email");
                return "signup.jsp";
            }
        }else{
            model.addAttribute("message", "please check email and password to confirm signup");
                return "signup.jsp";
        }
    }
    
    @RequestMapping("/booking")
    public String displayBooking(@ModelAttribute("patient") Patient patient){
        return "booking.jsp";
    }
    
    @RequestMapping("/confirm-booking")
    public String confirmBooking(@ModelAttribute("patient") Patient patient, Model model,HttpSession session){
        int checkReservation = patientDemo.reservation(session, patient);
        if(checkReservation == 0){
            model.addAttribute("message", "This appointment does booked please book another appointment");
            return "booking.jsp";
        }else{
            return "confirmbooking.jsp";
        }
        
    }
    
    @RequestMapping("/log-out")
    public String logout(HttpSession session){
        if(session.getAttribute("user") != null){
            session.invalidate();
            return "index.jsp";
        }else{
            return "index.jsp";
        }
    }
    
    @RequestMapping("appointments-search")
    public String searchAppointments(@ModelAttribute("patient") Patient patient){
        return "appointmentssearch.jsp";
    }
    
    @RequestMapping("appointments-booked")
    public String displayAppointments(@ModelAttribute("patient") Patient patient, Model model){
        List<Patient> result = patientDemo.getAppointments(patient);
        if(result.isEmpty()){
            model.addAttribute("message", "No appointments does booked in this day");
            return "appointmentssearch.jsp";
        }else{
            model.addAttribute("result", result);
            return "displayappointments.jsp";
        }
    }

}
