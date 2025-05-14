package com.bca.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.bca.model.OrderEntity;

public interface OrderRepository extends JpaRepository<OrderEntity, Long> {

}
