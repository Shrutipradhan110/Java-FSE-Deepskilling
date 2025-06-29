package com.example;

import static org.junit.Assert.*;
import org.junit.Test;

public class SimpleTest {

    @Test
    public void testAdd() {
        SimpleMath math = new SimpleMath();
        assertEquals(7, math.add(3, 4));
    }

    @Test
    public void testSubtract() {
        SimpleMath math = new SimpleMath();
        assertEquals(2, math.subtract(5, 3));
    }

    @Test
    public void testMultiply() {
        SimpleMath math = new SimpleMath();
        assertEquals(20, math.multiply(4, 5));
    }

    @Test
    public void testDivide() {
        SimpleMath math = new SimpleMath();
        assertEquals(5, math.divide(10, 2));
    }

    @Test(expected = ArithmeticException.class)
    public void testDivideByZero() {
        SimpleMath math = new SimpleMath();
        math.divide(10, 0);
    }
}
