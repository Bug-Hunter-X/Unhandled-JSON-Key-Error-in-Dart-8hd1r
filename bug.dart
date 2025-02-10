```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the JSON response
      final jsonData = jsonDecode(response.body);
      // Accessing a non-existent key will throw an exception
      final nonExistentValue = jsonData['nonExistentKey'];
      print(nonExistentValue);
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    // Handle the error appropriately
    // Consider re-throwing or displaying a user-friendly message
  }
}
```