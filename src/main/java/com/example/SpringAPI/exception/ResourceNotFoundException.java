package com.example.SpringAPI.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(value = HttpStatus.NOT_FOUND)
<<<<<<< HEAD
public class ResourceNotFoundException extends RuntimeException {
    public ResourceNotFoundException(String message) {
=======
public class ResourceNotFoundException extends RuntimeException{

    public ResourceNotFoundException(String message){
>>>>>>> 9d2b3835be7d088f34521bc9d6d3a6db48e811cc
        super(message);
    }
}
