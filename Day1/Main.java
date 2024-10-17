package com.Task1;

import java.util.HashSet;
import java.util.Scanner;

public class Main {
    
    public static void main(String[] args) {
        HashSet<String> usernames = new HashSet<>();
        Scanner scanner = new Scanner(System.in);

        // Adding initial usernames
        usernames.add("shubham");
        usernames.add("kumar");
        usernames.add("20BCE0101");

        // Check if a username exists
        System.out.print("Enter a username to check: ");
        String usernameToCheck = scanner.nextLine();
        
        if (usernames.contains(usernameToCheck)) {
            System.out.println("Username exists.");
        } else {
            System.out.println("Username does not exist.");
            // Adding the new username
            usernames.add(usernameToCheck);
            System.out.println("Username added.");
        }

        // Remove a username
        System.out.print("Enter a username to remove: ");
        String usernameToRemove = scanner.nextLine();
        
        if (usernames.remove(usernameToRemove)) {
            System.out.println("Username removed.");
        } else {
            System.out.println("Username not found.");
        }

        // Display remaining usernames
        System.out.println("Remaining usernames: " + usernames);
        
        scanner.close();
    }
}
