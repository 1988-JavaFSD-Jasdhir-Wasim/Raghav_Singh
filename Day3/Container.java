public class Container<T> {
    private T object;

    // Set the object in the container
    public void set(T object) {
        this.object = object;
    }

    // Get the object from the container
    public T get() {
        return object;
    }

    public static void main(String[] args) {
        Container<String> stringContainer = new Container<>();
        stringContainer.set("Hello, World!");
        System.out.println("String in container: " + stringContainer.get());  // Outputs: Hello, World!

        Container<Integer> intContainer = new Container<>();
        intContainer.set(100);
        System.out.println("Integer in container: " + intContainer.get());  // Outputs: 100
    }
}
