package com.example.SpringAPI.repository;

import com.example.SpringAPI.model.Employee;
import org.springframework.data.jpa.repository.JpaRepository;

public interface EmployeeRepository extends JpaRepository<Employee, Long> {
    //all crud database methods
}
