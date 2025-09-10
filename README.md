# **Maxima-Lisp OOP Example**

This repository provides a minimal, canonical example of how to implement a custom class with operator overloading in Maxima, using Common Lisp for the backend implementation. It demonstrates a robust, modular pattern for extending Maxima's capabilities with high-performance Lisp code.

The goal is to create a `my_point` class representing a 2D point and overload the `++` operator to perform vector addition.

## **Key Concepts Demonstrated**

* **Object-Oriented Programming (OOP) in Maxima**: Defining a class-like structure (`my_point`).  
* **Operator Overloading**: Defining the `++` infix operator to add two `my_point` objects.  
* **Maxima-Lisp Interoperability**: Calling a Lisp function from Maxima to perform the core logic.  
* **Modular Structure**: Separating the project into three distinct files:  
  1. A Lisp implementation file (the "backend").  
  2. A Maxima interface/header file (the "frontend").  
  3. A main script that uses the final class.

## **File Structure**

* `my_point.lisp`: The **Lisp implementation**. This file contains the low-level function (`$add_points`) that performs the actual addition. It is completely unaware of the user-facing Maxima code.  
* `my_point.mac`: The **Maxima interface file**. This is the public "header" for the class. It defines the `my_point` structure, loads the Lisp backend, and defines the `++` operator with proper type checking. Any script that wants to use this class only needs to load this file.  
* `main.mac`: The **main user script**. This is a clean example of how to use the `my_point` class and its `++` operator, without needing any knowledge of the underlying Lisp implementation.

## **How to Run**

1. Ensure all three files (`main.mac`, `my_point.mac`, `my_point.lisp`) are in the same directory.  
2. Start Maxima from that directory.  
3. Run the main script using the batch command:  

   ```
   batch("main.mac");
   ```

You should see the successful addition of two points as the output.

## **License**

This work is licensed under the [Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-nc-sa/4.0/).