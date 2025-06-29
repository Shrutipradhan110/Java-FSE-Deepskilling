package com.example;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class AppenderExample {
    private static final Logger logger = LoggerFactory.getLogger(AppenderExample.class);

    public static void main(String[] args) {
        logger.info("This message will be logged to both console and file.");
        logger.warn("This is a warning message with appenders.");
        logger.error("This is an error message written via multiple appenders.");
    }
}
