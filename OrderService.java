package com.bca.service;

import com.bca.model.OrderEntity;
import java.util.List;

public interface OrderService {
    List<OrderEntity> getAllOrders();
    OrderEntity saveOrder(OrderEntity order);
    public void deleteOrderById(Long id);
    public void updateOrder(OrderEntity updatedOrder);

}
