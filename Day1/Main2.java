package com.Task1;
import java.util.*;
public class Main2 {
	public static void main(String[] args) {
        LinkedHashMap<String, Integer> grades = new LinkedHashMap<>();
        Scanner scanner = new Scanner(System.in);
        
        // Adding student grades
        grades.put("S001", 85);
        grades.put("S002", 90);
        grades.put("S003", 78);

        System.out.println("Enter a student ID to retrieve the grade:");
        String studentIdToCheck = scanner.nextLine();
        
        // Retrieving a grade by student ID
        Integer grade = grades.get(studentIdToCheck);
        if (grade != null) {
            System.out.println("Grade for " + studentIdToCheck + ": " + grade);
        } else {
            System.out.println("No grade found for student ID " + studentIdToCheck);
        }

        // Adding a new student's grade
        System.out.println("Enter a new student ID and grade (format: ID,grade):");
        String[] input = scanner.nextLine().split(",");
        if (input.length == 2) {
            String newStudentId = input[0];
            int newGrade = Integer.parseInt(input[1]);
            grades.put(newStudentId, newGrade);
            System.out.println("Grade added for " + newStudentId);
        }

        // Display all student grades in order
        System.out.println("All student grades:");
        for (Map.Entry<String, Integer> entry : grades.entrySet()) {
            System.out.println("Student ID: " + entry.getKey() + ", Grade: " + entry.getValue());
        }

        scanner.close();
    }

}
