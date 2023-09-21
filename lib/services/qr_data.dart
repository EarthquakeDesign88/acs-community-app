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


    final res = await http.post(
      Uri.parse('${AppConstants.baseUrl}${AppConstants.generateQrCodeUri}'), 
      headers: {
        'Content-Type': 'application/json', 
      },
      body: jsonEncode(data), 
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
