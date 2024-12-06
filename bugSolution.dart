```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);

      //Check if the response is a list before casting
      if (jsonResponse is List) {
        final dataList = jsonResponse.cast<dynamic>(); //Safe cast
        // ... further processing of dataList
      } else if (jsonResponse is Map) {
        //Handle the case where the response is a map.
        print('JSON response is a Map: $jsonResponse');
      } else {
        //Handle other unexpected types
        print('Unexpected JSON response type: $jsonResponse');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    rethrow;
  }
}
```