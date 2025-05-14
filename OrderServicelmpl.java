package com.bca.service.impl;

import com.bca.model.OrderEntity;
import com.bca.repository.OrderRepository;
import com.bca.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {

    @Autowired
    private OrderRepository orderRepository;

    @Override
    public List<OrderEntity> getAllOrders() {
        return orderRepository.findAll();
    }

    @Override
    public OrderEntity saveOrder(OrderEntity order) {
        return orderRepository.save(order);
    }
    
    public void deleteOrderById(Long id) {
        orderRepository.deleteById(id);
    }
    
    public void updateOrder(OrderEntity updatedOrder) {
        OrderEntity existing = orderRepository.findById(updatedOrder.getId()).orElse(null);
        if (existing != null) {
            existing.setProduct(updatedOrder.getProduct());
            existing.setCustomer(updatedOrder.getCustomer());
            existing.setStatus(updatedOrder.getStatus());
            orderRepository.save(existing);
        }
    }


}
