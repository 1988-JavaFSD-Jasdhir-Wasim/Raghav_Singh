package com.revature.raghav;

//Generic Pair class
public class temp_pair<T, U> {
 private T first;
 private U second;

 // Constructor to initialize the pair
 public temp_pair(T first, U second) {
     this.first = first;
     this.second = second;
 }

 // Getter for the first value
 public T getFirst() {
     return first;
 }

 // Setter for the first value
 public void setFirst(T first) {
     this.first = first;
 }

 // Getter for the second value
 public U getSecond() {
     return second;
 }

 // Setter for the second value
 public void setSecond(U second) {
     this.second = second;
 }

 @Override
 public String toString() {
     return "temp_pair{" + "first=" + first + ", second=" + second + '}';
 }
}
