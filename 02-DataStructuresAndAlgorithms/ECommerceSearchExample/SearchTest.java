import java.util.Arrays;
import java.util.Comparator;

public class SearchTest {

    public static void main(String[] args) {

        Product[] products = {

                new Product(101, "Laptop", "Electronics"),
                new Product(102, "Shoes", "Fashion"),
                new Product(103, "Mobile", "Electronics"),
                new Product(104, "Watch", "Accessories"),
                new Product(105, "Book", "Education")

        };

        // Linear Search

        Product linearResult = SearchOperations.linearSearch(products, "Mobile");

        System.out.println("Linear Search:");

        if (linearResult != null) {
            System.out.println("Product Found:");
            System.out.println(linearResult.productId + " "
                    + linearResult.productName + " "
                    + linearResult.category);
        } else {
            System.out.println("Product Not Found");
        }

        // Sort for Binary Search

        Arrays.sort(products, Comparator.comparing(product -> product.productName));

        // Binary Search

        Product binaryResult = SearchOperations.binarySearch(products, "Mobile");

        System.out.println("\nBinary Search:");

        if (binaryResult != null) {
            System.out.println("Product Found:");
            System.out.println(binaryResult.productId + " "
                    + binaryResult.productName + " "
                    + binaryResult.category);
        } else {
            System.out.println("Product Not Found");
        }

    }
}
 