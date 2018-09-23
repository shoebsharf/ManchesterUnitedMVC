package com.example.demo.controllers;
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
public class OrderController {
    @Autowired
    RestTemplate restTemplate;

    @RequestMapping(value = "/orders", method = RequestMethod.GET)
    public ModelAndView getOrders(HttpServletRequest request) {
        ModelAndView view = new ModelAndView();
        view.setViewName("orders");
        ResponseEntity<Order[]> responseEntity =restTemplate.getForEntity("http://localhost:8091/orders", Order[].class);
        System.out.println("before response order method");
        Order[] o = (responseEntity.getBody());
        System.out.println("lenght of the table rows " + o.length);
        request.setAttribute("o", Arrays.asList(o));
        System.out.println("after arrays list");
        return view;

    }

    @RequestMapping(value = "/admin", method = RequestMethod.GET)
    public String adminhome() {
        System.out.println("before adminhome");
        return "adminhome";
    }

    @RequestMapping(value = "/deleteOrder", method = RequestMethod.GET)
    public String openDelete() {
        System.out.println("before openDelete");
        return "deleteorder";
    }
    @RequestMapping(value = "/delor", method = RequestMethod.GET)
    public String deleteOrder(HttpServletRequest request){
        System.out.println("before delor");

       restTemplate.getForEntity("http://localhost:8091/ordersid?=", Order.class);
        System.out.println("before response order method");
        return "orders";
    }
    @RequestMapping(value = "/updateOrder", method = RequestMethod.GET)
    public String openUpdate() {
        System.out.println("before update");
        return "updateorder";
    }
    @RequestMapping(value = "/uporder", method = RequestMethod.PUT)
    public String updateCell(@ModelAttribute Order o) {
        System.out.println("before updateCell");
        restTemplate.put("http://localhost:8091/cell",o, Order.class);
        System.out.println("after updateCell");
        return "adminhome";
    }
}
