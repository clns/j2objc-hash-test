import java.lang.String;
class HashTest {
    public static void main(String[] args) {
        HashTest test = new HashTest();
        String name = test.getClass().getName();
        int hash = name.hashCode();
        
        System.out.println("\""+name+"\".hashCode() = " + hash);
    }
}