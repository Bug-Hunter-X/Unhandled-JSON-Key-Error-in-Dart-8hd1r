```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Check for the key before accessing it
      final nonExistentValue = jsonData.containsKey('nonExistentKey') ? jsonData['nonExistentKey'] : null; 
      print(nonExistentValue); //Will print null if key is missing
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    // Handle the error appropriately
  }
}
```