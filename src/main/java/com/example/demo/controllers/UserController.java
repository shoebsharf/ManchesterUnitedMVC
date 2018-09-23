package com.example.demo.controllers;
import com.example.demo.models.Jersey;
import com.example.demo.models.Order;
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
public class UserController {
    @Autowired
    RestTemplate restTemplate;

    @RequestMapping(value = "/tshirt", method = RequestMethod.GET)
    public ModelAndView getJersey(HttpServletRequest request) {
        ModelAndView view = new ModelAndView();
        view.setViewName("tshirt");
        ResponseEntity<Jersey[]> responseEntity = restTemplate.getForEntity("http://localhost:8091/jersey", Jersey[].class);
        System.out.println("before response tshirt method");
        Jersey[] jersey = (responseEntity.getBody());
        System.out.println("length of the table rows " + jersey.length);
        request.setAttribute("jersey", Arrays.asList(jersey));

        System.out.println("after tshirt");
        return view;

    }
    @RequestMapping(value = "/addOrder", method = RequestMethod.GET)
    public String openAdd() {
        System.out.println("before openAdd");
        return "addorder";
    }

    @RequestMapping(value = "/orderSave", method = RequestMethod.POST)
    public String createOrder(@ModelAttribute Order o) {
        System.out.println("before order");
        restTemplate.postForEntity("http://localhost:8091/orders",o, Order.class);
        System.out.println("after order");
        return "homepage";
    }
    @RequestMapping(value = "/home", method= RequestMethod.GET)
    public String home(){
        System.out.println("inside home method");
        return "homepage";
    }
    @RequestMapping(value = "/userdelorder", method= RequestMethod.GET)
    public String UserDeleteOrder(){
        System.out.println("inside home method");
        return "userdelorder";
    }

    @RequestMapping(value = "/useruporder", method= RequestMethod.GET)
    public String UserUpdateOrder(){
        System.out.println("inside home method");
        return "useruporder";
    }

    @RequestMapping(value = "/jerseyproduct", method= RequestMethod.GET)
    public String jerseyproduct(){
        System.out.println("inside jerseyproduct method");
        return "jerseyproduct";
    }

    @RequestMapping(value = "/udelor", method = RequestMethod.DELETE)
    public String deleteOrder(@ModelAttribute Order o ){
        System.out.println("before delor");
        restTemplate.delete("http://localhost:8091/cell",o, Order.class);
        System.out.println("after delor");
        return "homepage";
    }
    @RequestMapping(value = "/uuporder", method = RequestMethod.PUT)
    public String updateJersey(@ModelAttribute Order o) {
        System.out.println("before updateJersey");
        restTemplate.put("http://localhost:8091/jersey",o, Order.class);
        System.out.println("after updateJersey");
        return "homepage";
    }

}
