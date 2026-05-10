package com.example.demo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.net.InetAddress;
import java.net.UnknownHostException;

@RestController
public class HelloController {
    static int i= 0;

    @GetMapping("/hello")
    public String sayHello() throws UnknownHostException {
        InetAddress inetAddress = InetAddress.getLocalHost();


        // Get the IP address of the local machine
        String ipAddress = inetAddress.getHostAddress();

        return "Hello, World! and IP is "+ipAddress +" counter: "+i++;
    }
}