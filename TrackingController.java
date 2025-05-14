package com.bca.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.bca.model.OrderEntity;
import com.bca.service.OrderService;

@Controller
public class TrackingController {

    private final OrderService orderService;

    @Autowired
    public TrackingController(OrderService orderService) {
        this.orderService = orderService;
    }

    @GetMapping("/")
    public String index() {
        return "index"; // views/index.jsp
    }

    @GetMapping("/orders")
    public String viewOrders(Model model) {
        model.addAttribute("orders", orderService.getAllOrders());
        return "allOrders"; // views/allOrders.jsp
    }

    @GetMapping("/add")
    public String showAddForm(Model model) {
        model.addAttribute("order", new OrderEntity());
        return "addOrder"; // views/addOrder.jsp
    }

    @PostMapping("/save")
    public String saveOrder(@ModelAttribute("order") OrderEntity order) {
        orderService.saveOrder(order);
        return "redirect:/orders";
    }
    
    @GetMapping("/delete/{id}")
    public String deleteOrder(@PathVariable Long id) {
        orderService.deleteOrderById(id);
        return "redirect:/orders";
    }
    
    @PostMapping("/update")
    public String updateOrder(@ModelAttribute OrderEntity order) {
        orderService.updateOrder(order); // You must implement this in your service/repo
        return "redirect:/orders";
    }


}
