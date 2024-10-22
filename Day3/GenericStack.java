import java.util.ArrayList;
import java.util.List;

public class GenericStack<T> {
    private List<T> stack;

    // Constructor
    public GenericStack() {
        stack = new ArrayList<>();
    }

    // Push an item onto the stack
    public void push(T item) {
        stack.add(item);
    }

    // Pop an item from the stack
    public T pop() {
        if (isEmpty()) {
            throw new IllegalStateException("Stack is empty");
        }
        return stack.remove(stack.size() - 1);
    }

    // Peek the top item of the stack without removing it
    public T peek() {
        if (isEmpty()) {
            throw new IllegalStateException("Stack is empty");
        }
        return stack.get(stack.size() - 1);
    }

    // Check if the stack is empty
    public boolean isEmpty() {
        return stack.isEmpty();
    }

    // Get the size of the stack
    public int size() {
        return stack.size();
    }

    public static void main(String[] args) {
        GenericStack<Integer> stack = new GenericStack<>();
        stack.push(1);
        stack.push(2);
        System.out.println("Top of stack: " + stack.peek());  // Outputs: 2
        System.out.println("Stack size: " + stack.size());    // Outputs: 2
        System.out.println("Popped item: " + stack.pop());    // Outputs: 2
        System.out.println("Is stack empty? " + stack.isEmpty());  // Outputs: false
    }
}
