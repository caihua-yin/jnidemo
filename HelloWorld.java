public class HelloWorld {
    // Define local methos with "native" keyword
    public native void displayHelloWorld();
    static {
        // Load local library
        System.loadLibrary("hello");
    }
    public static void main(String[] args) {
        new HelloWorld().displayHelloWorld();
    }
}
