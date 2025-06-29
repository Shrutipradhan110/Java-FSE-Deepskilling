package com.example.demo;

import com.example.demo.exception.UserNotFoundException;
import com.example.demo.service.UserService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.web.servlet.MockMvc;

import static org.mockito.Mockito.when;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

@SpringBootTest
@AutoConfigureMockMvc
public class UserControllerExceptionTest {

    @Autowired
    private MockMvc mockMvc;

    @MockBean
    private UserService userService;

    @Test
    void testUserNotFoundException() throws Exception {
        when(userService.getUserById(100L))
            .thenThrow(new UserNotFoundException("User not found with ID: 100"));

        mockMvc.perform(get("/users/100"))
            .andExpect(status().isNotFound())
            .andExpect(content().string("User not found with ID: 100"));
    }
}
