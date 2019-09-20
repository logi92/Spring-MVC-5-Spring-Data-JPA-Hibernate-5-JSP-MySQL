package com.luv2code.repository;

import com.luv2code.entity.Customer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository("customerRepository")
public interface CustomerRepository extends JpaRepository<Customer, Integer> {

}
// поиск по полям
// как добавлять собственные запросы

