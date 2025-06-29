package com.example;

import static org.junit.Assert.*;
import org.junit.Before;
import org.junit.After;
import org.junit.Test;

public class PatternTest {

    private SimpleMath math;

    // Setup before each test
    @Before
    public void setUp() {
        math = new SimpleMath();
    }

    // Teardown after each test
    @After
    public void tearDown() {
        math = null; // clean up object
    }

    @Test
    public void testAdd() {
        // Arrange - math object created in setUp()
        int a = 5;
        int b = 10;

        // Act
        int result = math.add(a, b);

        // Assert
        assertEquals(15, result);
    }

    @Test
    public void testDivide() {
        // Arrange
        int a = 20;
        int b = 5;

        // Act
        int result = math.divide(a, b);

        // Assert
        assertEquals(4, result);
    }
}
