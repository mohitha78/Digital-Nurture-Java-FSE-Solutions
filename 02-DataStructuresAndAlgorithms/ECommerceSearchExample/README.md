# Exercise 2: E-commerce Platform Search Function

## Objective

Develop an efficient search functionality for an e-commerce platform by implementing both Linear Search and Binary Search algorithms. Compare their performance using Big O notation and determine the most suitable algorithm for searching products.

---

## Files Included

- Product.java
- SearchOperations.java
- SearchTest.java
- Output.png

---

## Product Class

The `Product` class represents a product in the e-commerce platform with the following attributes:

- Product ID
- Product Name
- Category

Sample Product:

| Product ID | Product Name | Category |
|------------|--------------|----------|
| 101 | Laptop | Electronics |

---

## Big O Notation

Big O notation is used to measure the efficiency of an algorithm by describing how its execution time increases as the input size grows. It helps in comparing different algorithms and selecting the most efficient one for large datasets.

---

## Search Algorithms

### 1. Linear Search

Linear Search checks each product one by one until the required product is found or the list ends.

**Advantages**
- Easy to implement.
- Works on both sorted and unsorted data.

**Disadvantages**
- Slow for large datasets because every element may need to be checked.

**Time Complexity**
- Best Case: **O(1)**
- Average Case: **O(n)**
- Worst Case: **O(n)**

---

### 2. Binary Search

Binary Search repeatedly divides the sorted array into two halves until the required product is found.

**Advantages**
- Very fast for large datasets.
- Requires fewer comparisons than Linear Search.

**Disadvantages**
- Works only on sorted data.

**Time Complexity**
- Best Case: **O(1)**
- Average Case: **O(log n)**
- Worst Case: **O(log n)**

---

## Time Complexity Comparison

| Search Algorithm | Best Case | Average Case | Worst Case |
|------------------|----------:|-------------:|------------:|
| Linear Search | O(1) | O(n) | O(n) |
| Binary Search | O(1) | O(log n) | O(log n) |

---

## Analysis

Linear Search is suitable for small or unsorted datasets because it is simple to implement and does not require sorting.

Binary Search is more suitable for large e-commerce platforms because it significantly reduces the number of comparisons. However, the product list must be sorted before performing Binary Search.

---

## Conclusion

For a large e-commerce platform, **Binary Search** is the preferred searching algorithm because of its logarithmic time complexity **O(log n)**, making it much faster than Linear Search **O(n)** for large collections of products.

---

## Output

The program successfully performs both Linear Search and Binary Search.

```
Linear Search:
Product Found:
103 Mobile Electronics

Binary Search:
Product Found:
103 Mobile Electronics
```

Refer to **Output.png** for the program execution.

---

## Result

Successfully implemented and tested:

- Product class
- Linear Search
- Binary Search
- Time Complexity Analysis
- Big O Notation Comparison

The program demonstrates that Binary Search is more efficient than Linear Search for searching products in a sorted dataset.
