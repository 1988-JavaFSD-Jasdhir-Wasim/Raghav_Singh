package com.revature.raghav;

import java.util.Arrays;

public class GenericSwap {

    // Generic swap method
    public static <T> void swap(T[] array) {
        if (array.length < 2) {
            System.out.println("Array is too small to swap.");
            return;
        }
        T temp = array[0];
        array[0] = array[array.length - 1];
        array[array.length - 1] = temp;
    }

    public static void main(String[] args) {
        // Demonstrating the Pair class
        Pair<String, Integer> pair = new Pair<>("Alice", 30);
        System.out.println("Original Pair: " + pair);
        pair.setFirst("Bob");
        pair.setSecond(25);
        System.out.println("Updated Pair: " + pair);

        // Demonstrating the swap method
        Integer[] numbers = {1, 2, 3, 4, 5};
        System.out.println("Original Array: " + Arrays.toString(numbers));
        swap(numbers);
        System.out.println("Array after swap: " + Arrays.toString(numbers));

        String[] words = {"Hello", "World", "Java", "Generics"};
        System.out.println("Original String Array: " + Arrays.toString(words));
        swap(words);
        System.out.println("String Array after swap: " + Arrays.toString(words));
    }
}
