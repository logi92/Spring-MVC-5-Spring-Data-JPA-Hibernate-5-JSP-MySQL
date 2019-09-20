package com.luv2code.service;

import com.luv2code.entity.Customer;
import com.luv2code.repository.CustomerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityNotFoundException;
import java.util.List;

@Service
public class CustomerServiceImpl implements CustomerService {


    @Autowired
    @Qualifier("customerRepository")
    private CustomerRepository customerRepository;

    @Override
    @Transactional
    public List<Customer> getCustomers() {

        return customerRepository.findAll();
    }

    @Override
    @Transactional
    public void saveCustomer(Customer customer) {

        customerRepository.save(customer);
    }

    @Override
    @Transactional
    public Customer getCustomer(int id) {

       return customerRepository.findById(id).orElseThrow(() -> new EntityNotFoundException());
    }

    @Override
    @Transactional
    public void deleteCustomer(int theId) {

        customerRepository.deleteById(theId);
    }
}
