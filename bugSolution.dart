```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      if (response.body.isNotEmpty) {
        try {
          final jsonData = jsonDecode(response.body);
          // Process jsonData
        } on FormatException catch (e) {
          print('Invalid JSON format: $e');
          // Handle the invalid JSON appropriately
        }
      } else {
        print('Empty response body');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```