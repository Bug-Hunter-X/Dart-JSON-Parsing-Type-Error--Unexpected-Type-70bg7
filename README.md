# Dart JSON Parsing Type Error

This repository demonstrates a common error in Dart when parsing JSON responses: unexpected type errors that occur when casting a JSON response to a specific type (in this case, a List).  The `bug.dart` file shows the problematic code, and `bugSolution.dart` provides a robust solution.

## Problem
The original code assumes the JSON response is always a list, but this might not always be the case.  If the server returns a map or another structure, the code will throw a runtime error. 

## Solution
The solution involves adding a check to handle different JSON structures gracefully. Instead of directly casting to `List<dynamic>`, we check the type before casting. This ensures that the program doesn't crash when the JSON data is not formatted as expected. 