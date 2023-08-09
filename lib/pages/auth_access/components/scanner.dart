import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:http/http.dart' as http;

class Scanner extends StatefulWidget {
  @override
  _ScannerState createState() => _ScannerState();
}

class _ScannerState extends State<Scanner> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? controller; // Declare QRViewController

  Barcode? scanResult;
  String apiResponse = ''; // State to hold API response

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) async {
      // Call your API with the scanned QR code data here
      final String qrData = scanData.code!;
      print("Scanned QR code data: $qrData");
      
      // Call the API and handle the response
      final response = await _callApiWithQRData(qrData);
      if (response != null) {
        setState(() {
          apiResponse = response; // Update the response state
        });
      }
    });
  }


  Future<String?> _callApiWithQRData(String qrData) async {
    final apiUrl = 'http://elephant-tower.com/app-backend/api/qr_scanner.php';
    try {
      final response = await http.post(Uri.parse(apiUrl), body: {'qrData': qrData});
      
      if (response.statusCode == 200) {
        print('API Response: ${response.body}');
        return response.body;
      } else {
        print('API Call Failed: ${response.reasonPhrase}');
        return null; // Return null for API call failure
      }
    } catch (error) {
      print('Error during API call: $error');
      return null; // Return null for errors
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR Scanner'),
      ),
      body: Column(
      children: <Widget>[
        Expanded(
            child: QRView(
              key: qrKey,
              onQRViewCreated: _onQRViewCreated,
            ),
          ),
          SizedBox(height: 20),
          Text("API Response: $apiResponse"), // Display API response here
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scanner(),
  ));
}
