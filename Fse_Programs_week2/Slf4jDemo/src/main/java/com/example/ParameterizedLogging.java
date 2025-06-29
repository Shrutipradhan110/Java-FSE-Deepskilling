package com.example;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class ParameterizedLogging {
    private static final Logger logger = LoggerFactory.getLogger(ParameterizedLogging.class);

    public static void main(String[] args) {
        String username = "Shruti";
        int loginAttempts = 3;

        logger.info("User {} has attempted to login {} times", username, loginAttempts);
        logger.debug("Debugging login for user {}", username);
    }
}
