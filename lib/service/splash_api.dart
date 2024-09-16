import 'dart:convert';
import 'package:http/http.dart' as http;

class SplashApi {

  static const String _baseUrl = 'http://devapiv4.dealsdray.com/api/v2/user/device/add';

  // Method to send device data to the server
  static Future<void> sendDeviceData(Map<String, dynamic> data) async {
    try {
      // Send POST request
      final response = await http.post(
        Uri.parse(_baseUrl),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(data),
      );

      // Check the response status
      if (response.statusCode == 200) {
        print('Device data sent successfully');
      } else {
        print('Failed to send device data. Status code: ${response.statusCode}');
        print('Response body: ${response.body}');
      }
    } catch (e) {
      print('Error occurred: $e');
    }
  }
}
