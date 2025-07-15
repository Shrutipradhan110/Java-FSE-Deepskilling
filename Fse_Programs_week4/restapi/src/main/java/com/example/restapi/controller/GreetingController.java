package com.example.restapi.controller;

import com.example.restapi.model.Greeting;
import org.springframework.web.bind.annotation.*;
import java.util.concurrent.atomic.AtomicLong;
@RestController
@RequestMapping("/api")
public class GreetingController {
    private final AtomicLong counter = new AtomicLong();
    @GetMapping("/greet")
    public Greeting greet(@RequestParam(value = "name", defaultValue = "World") String name) {
        return new Greeting(counter.incrementAndGet(), "Hello, " + name + "!");
    }
    @GetMapping("/names")
    public String[] getNames() {
        return new String[]{"Shruti", "Ahaan", "Priya"};
    }
    @GetMapping("/id/{userId}")
    public String getById(@PathVariable int userId) {
        return "User ID received: " + userId;
    }
}
