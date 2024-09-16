import 'dart:convert'; // For jsonEncode
import 'package:http/http.dart' as http;

Future<void> sendOtpVerification(String otp, String deviceId, String userId) async {
  final url = 'http://devapiv4.dealsdray.com/api/v2/user/otp/verification';

  final Map<String, String> requestBody = {
    'otp': otp,
    'deviceId': deviceId,
    'userId': userId,
  };

  try {
    final response = await http.post(
      Uri.parse(url),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(requestBody),
    );

    if (response.statusCode == 200) {
      print('Response data: ${response.body}');
    } else {
      print('Failed to send OTP verification. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error occurred: $e');
  }
}
