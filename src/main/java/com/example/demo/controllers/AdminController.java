package com.example.demo.controllers;
import com.example.demo.models.AdminLogin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.http.HttpServletRequest;
import java.util.Arrays;

@Controller
public class AdminController {
    @Autowired
    RestTemplate restTemplate;

    @RequestMapping(value = "/adminlogin", method = RequestMethod.GET)
    public ModelAndView getAdmins(HttpServletRequest request) {
        ModelAndView view = new ModelAndView();
        view.setViewName("adminlist");
        ResponseEntity<AdminLogin[]> responseEntity = restTemplate.getForEntity("http://localhost:8091/login", AdminLogin[].class);
        System.out.println("before response adminlogin method");
        AdminLogin[] logins = (responseEntity.getBody());
        System.out.println("lenght of the table rows " + logins.length);
        request.setAttribute("logins", Arrays.asList(logins));
        System.out.println("after adminlogin");
        return view;

    }
    @RequestMapping(value = "/loginprocess", method = RequestMethod.GET)
    public ModelAndView login(@ModelAttribute AdminLogin adminLogin, HttpServletRequest request) {
        System.out.println("user "+adminLogin.getUserName()+" "+adminLogin.getPassword());
        ResponseEntity<AdminLogin[]> responseEntity = restTemplate.getForEntity("http://localhost:8091/login", AdminLogin[].class);
        AdminLogin[] login1 = (responseEntity.getBody());
        request.setAttribute("a", Arrays.asList(login1));

        if(responseEntity.equals(adminLogin)){

            ModelAndView view = new ModelAndView();
            System.out.println("if adminhome method");
            view.setViewName("adminhome");
            view.addObject(responseEntity.getBody());
            return view;
        }
     return null;
    }
    @RequestMapping(value = "/loginpage", method = RequestMethod.GET)
    public String openLogin() {
        System.out.println("before openAdd");
        return "loginpage";
    }

    @RequestMapping(value = "/addadmin", method = RequestMethod.GET)
    public String addAdmin() {
        System.out.println("before openAdd");
        return "addadmin";
    }
    @RequestMapping(value = "/deleteadmin", method = RequestMethod.GET)
    public String adminDelete() {
        System.out.println("before openDelete");
        return "deleteadmin";
    }
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String oouLogin() {
        System.out.println("before openAdd");
        return "homepage";
    }
    @RequestMapping(value = "/addlog", method = RequestMethod.POST)
    public String createAdmin(@ModelAttribute AdminLogin adminLogin) {
        System.out.println("before adminLogin");
        restTemplate.postForEntity("http://localhost:8092/login",adminLogin, AdminLogin.class);
        System.out.println("after adminLogin");
        return "adminhome";
    }
}
