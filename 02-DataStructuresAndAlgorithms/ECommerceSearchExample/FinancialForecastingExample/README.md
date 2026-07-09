# Exercise 7: Financial Forecasting

## Objective

Develop a financial forecasting tool that predicts future values based on past data using a recursive algorithm. Analyze the time complexity of recursion and discuss possible optimizations.

---

## Files Included

- FinancialForecast.java
- ForecastTest.java
- Output.png

---

## What is Recursion?

Recursion is a programming technique in which a method calls itself to solve a smaller version of the same problem. Every recursive method must have a **base case** to stop further recursive calls and prevent infinite recursion.

---

## Recursive Algorithm Used

The program calculates the future value of an investment using the formula:

**Future Value = Present Value × (1 + Growth Rate)**

The recursive method repeatedly calculates the value for the previous year until it reaches the base case (0 years).

---

## Algorithm

1. If the number of years is 0, return the present value.
2. Otherwise, recursively calculate the future value for the previous year.
3. Multiply the returned value by `(1 + growthRate)`.
4. Return the final future value.

---

## Time Complexity

The recursive method makes one recursive call for each year.

- **Best Case:** O(1) (when years = 0)
- **Average Case:** O(n)
- **Worst Case:** O(n)

where **n** is the number of years.

---

## Space Complexity

The recursive approach uses the call stack for each recursive call.

- **Space Complexity:** O(n)

---

## Optimization

Although recursion is simple and easy to understand, it uses additional memory because of recursive function calls.

Possible optimizations include:

- Using an iterative (loop-based) solution to eliminate recursion and reduce memory usage.
- Using memoization when recursive problems contain overlapping subproblems. (In this forecasting problem, memoization provides little benefit because each year's value is calculated only once.)

---

## Program Output

```text
Present Value : 10000.0
Growth Rate   : 10.0%
Years         : 5
Future Value  : 16105.10
```

Refer to **Output.png** for the program execution.

---

## Result

Successfully implemented and tested a recursive financial forecasting algorithm.

The program demonstrates:

- Recursive function implementation
- Base case and recursive calls
- Future value prediction
- Time complexity analysis
- Optimization techniques for recursive algorithms
