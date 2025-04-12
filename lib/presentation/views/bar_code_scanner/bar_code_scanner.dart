import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class BarcodeScannerScreen extends StatefulWidget {
  const BarcodeScannerScreen({Key? key}) : super(key: key);

  @override
  _BarcodeScannerScreenState createState() => _BarcodeScannerScreenState();
}

class _BarcodeScannerScreenState extends State<BarcodeScannerScreen> {
  String _scannedBarcode = ''; // Store the scanned barcode value

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Scan Barcode")),
      body: Stack(
        children: [
          // The MobileScanner widget for barcode detection
          MobileScanner(
            onDetect: (BarcodeCapture capture) {
              final List<Barcode> barcodes = capture.barcodes;
              if (barcodes.isNotEmpty) {
                final String code = barcodes.first.rawValue ?? 'No value';
                setState(() {
                  _scannedBarcode =
                      code; // Update the barcode value on detection
                });
              }
            },
          ),
          // Add the scan window overlay with borders on all sides
          Center(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.green, // Border color for the scan window
                  width: 4.0, // Thicker border for more emphasis
                ),
                borderRadius: BorderRadius.circular(
                  16,
                ), // Optional rounded corners
              ),
              width: 300.0, // Width of the scan window
              height: 300.0, // Height of the scan window
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Container(
                  color: Colors.transparent, // Make the scan window transparent
                ),
              ),
            ),
          ),
          // Display the barcode result below the scan window
          Positioned(
            bottom: 30,
            left: 0,
            right: 0,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  _scannedBarcode.isEmpty
                      ? 'Scan a barcode to see the value.'
                      : 'Scanned Barcode: $_scannedBarcode',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
