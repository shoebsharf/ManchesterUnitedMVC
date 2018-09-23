package com.example.demo.controllers;
import com.example.demo.models.Jersey;
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
public class JerseyController {

    @Autowired
    RestTemplate restTemplate;
    @RequestMapping(value = "/jerseys", method = RequestMethod.GET)
    public ModelAndView getJersey(HttpServletRequest request) {
        ModelAndView view = new ModelAndView();
        view.setViewName("jerseys");
        ResponseEntity<Jersey[]> responseEntity = restTemplate.getForEntity("http://localhost:8091/jersey", Jersey[].class);
        System.out.println("before response of jersey method");
        Jersey[] jersey = (responseEntity.getBody());
        System.out.println("length of the table rows " + jersey.length);
        request.setAttribute("jersey", Arrays.asList(jersey));


        System.out.println("after jersey");
        return view;

    }
    @RequestMapping(value = "/addJersey", method = RequestMethod.GET)
    public String openAdd() {
        System.out.println("before openAdd");
        return "addjerseys";
    }
    @RequestMapping(value = "/deleteJersey", method = RequestMethod.GET)
    public String openDelete() {
        System.out.println("before openDelete");
        return "delete";
    }
    @RequestMapping(value = "/updateJersey", method = RequestMethod.GET)
    public String openUpdate() {
        System.out.println("before update");
        return "update";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String createJersey(@ModelAttribute Jersey jersey) {
        System.out.println("before hello");
restTemplate.postForEntity("http://localhost:8091/jersey",jersey, Jersey.class);
        System.out.println("after hello");
        return "jerseys";
    }
    @RequestMapping(value = "/del", method = RequestMethod.DELETE)
    public String deleteJersey(@ModelAttribute Jersey jersey) {
        System.out.println("before del");

        restTemplate.delete("http://localhost:8091/jersey",jersey, Jersey.class);
        System.out.println("after del");
        return "hello";
    }
    @RequestMapping(value = "/update", method = RequestMethod.PUT)
    public String updateJersey(@ModelAttribute Jersey jersey ) {
        System.out.println("before updateJersey");
        restTemplate.put("http://localhost:8091/jersey",jersey, Jersey.class);
        System.out.println("after updateJersey");
        return "hello";
    }
}




