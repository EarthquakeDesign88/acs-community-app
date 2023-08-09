import 'package:acs_community/utils/app_constants.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> sendQRData(String qrData) async {
  try {
    final generateTime = DateTime.now();
    final expirationTime = generateTime.add(const Duration(minutes: 3));

    var data = {
      "qrdata": qrData,
      "status": "Identity Authentication",
      "generate_time": generateTime.toString(),
      "expiration_time": expirationTime.toString()
    };

    print('QR Data: $data');

    // final res = await http.post(
    //   Uri.parse('${AppConstants.baseUrl}${AppConstants.generateQrCodeUri}'),
    //   headers: {
    //     'Content-Type': 'application/x-www-form-urlencoded',
    //   },
    //   body: Uri(queryParameters: data).query,
    // );

    final res = await http.post(
      Uri.parse('https://www.eptg-acsc.co.th/app-backend/api/generate_qrcode.php'), // Corrected URL
      headers: {
        'Content-Type': 'application/json', // Set content type to JSON
      },
      body: jsonEncode(data), // Convert data to JSON string
    );

    if (res.statusCode == 200) {
      print('QR Data sent successfully');
    } else {
      print('Failed to send QR Data. Status code: ${res.statusCode}');
    }
  } catch (err) {
    print('Error sending QR Data: $err');
  }
}
