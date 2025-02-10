# Unhandled JSON Key Error in Dart

This repository demonstrates a common error in Dart when handling JSON responses: attempting to access a key that does not exist in the JSON data. This results in a runtime exception.

## Bug Description
The `fetchData` function makes an HTTP request to fetch JSON data.  It then attempts to access a key ('nonExistentKey') that might not be present in the JSON response.  This leads to an error if the key is missing.

## Solution
The solution involves checking for the existence of the key before attempting to access its value.  This prevents the runtime exception and handles the case where the key is absent gracefully.

## How to reproduce the bug
1. Clone this repository.
2. Run `bug.dart`.
3. Observe the exception when accessing the non-existent key.