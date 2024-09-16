import 'dart:convert';
import 'package:http/http.dart' as http;

class OtpApi {
  Future<void> verifyOtp({
    required String otp,
    required String deviceId,
    required String userId,
  }) async {
    final url = 'http://devapiv4.dealsdray.com/api/v2/user/otp/verification';

    final Map<String, dynamic> body = {
      'otp': otp,
      'deviceId': deviceId,
      'userId': userId,
    };

    try {
      final response = await http.post(
        Uri.parse(url),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(body),
      );

      if (response.statusCode == 200) {
        print('OTP verification successful: ${response.body}');
      } else {
        print('Failed to verify OTP: ${response.statusCode} ${response.body}');
      }
    } catch (e) {
      print('Error occurred: $e');
    }
  }
}
