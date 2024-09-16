import 'dart:io' show Platform;
import 'package:device_info_plus/device_info_plus.dart';
import 'package:package_info_plus/package_info_plus.dart';

class DeviceInfoHelper {
  static Future<Map<String, dynamic>> getDeviceData() async {
    final deviceInfo = DeviceInfoPlugin();
    final packageInfo = await PackageInfo.fromPlatform();

    final Map<String, dynamic> data = {};

    if (Platform.isAndroid) {
      final androidInfo = await deviceInfo.androidInfo;
      data['deviceType'] = 'android';
      data['deviceId'] = androidInfo;
      data['deviceName'] = androidInfo.model;
      data['deviceOSVersion'] = androidInfo.version.release;
    } else if (Platform.isIOS) {
      final iosInfo = await deviceInfo.iosInfo;
      data['deviceType'] = 'ios';
      data['deviceId'] = iosInfo.identifierForVendor;
      data['deviceName'] = iosInfo.model;
      data['deviceOSVersion'] = iosInfo.systemVersion;
    }

    // Collect additional app and device info
    data['deviceIPAddress'] = 'N/A';
    data['lat'] = 'N/A';
    data['long'] = 'N/A';
    data['buyer_gcmid'] = '';
    data['buyer_pemid'] = '';
    data['app'] = {
      'version': packageInfo.version,
      'installTimeStamp': 'N/A',
      'uninstallTimeStamp': 'N/A',
      'downloadTimeStamp': 'N/A',
    };

    return data;
  }
}
