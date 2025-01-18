# Unhandled JSON Decoding Exception in Dart

This repository demonstrates a common error in Dart when using the `http` package to fetch and parse JSON data. The provided code snippet showcases an example where a `FormatException` can occur during `jsonDecode`, which is not explicitly handled, leading to potential app crashes.

The `bug.dart` file contains the problematic code, while `bugSolution.dart` presents a refined version with comprehensive error handling.  The solution includes a check for the response type before decoding and handles the `FormatException` gracefully.

## How to Reproduce

1. Clone this repository.
2. Run `bug.dart`.
3. Observe the potential failure if the API response isn't valid JSON.
4. Run `bugSolution.dart` and see the improved error handling.