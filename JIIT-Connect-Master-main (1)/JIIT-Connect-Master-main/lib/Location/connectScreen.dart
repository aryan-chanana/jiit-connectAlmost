import 'dart:async';
import 'package:flutter/material.dart';
import 'package:barcode_scan2/barcode_scan2.dart';
import 'package:flutter/services.dart';
import 'kamra.dart';
import 'shortest.dart';


class ConnectScreen extends StatefulWidget {
  const ConnectScreen({super.key});

  @override
  State<ConnectScreen> createState() => _ConnectScreenState();
}

class _ConnectScreenState extends State<ConnectScreen> {
  String result = "Get Current Location & Enter Destination";


  Future _scanQR() async {
    try {
      ScanResult qrScanResult = await BarcodeScanner.scan();
      String qrResult = qrScanResult.rawContent;
      setState(() {
        result = qrResult;
      });
    }on PlatformException catch(ex) {
      if (ex.code == BarcodeScanner.cameraAccessDenied) {
        setState(() {
          result = "Camera Permission was Denied";
        });
      }
      else {
        setState(() {
          result = "Unknown Error $ex";
        });
      }
    } on FormatException {
      setState(() {
        result = "Back Button Pressed before Scanning";
      });
    } catch (ex) {
      setState(() {
        result = "Unknown Error $ex";
      });
    }
  }


  final destination = TextEditingController();
  String destination_stored = '';

  _getPath() {
    destination_stored = destination.text;

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => shortest(result, destination_stored),
      ),
    );
  }

  _getRoomCode() {
    destination_stored = destination.text;
    print(destination_stored);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => kamra(destination_stored),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("QR Scanner"),
      ),
      body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                result,
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              TextField(
                controller: destination,
                decoration: InputDecoration(
                  hintText: 'Enter Destination',
                  suffixIcon: IconButton(onPressed:() {
                    destination.clear();
                  },
                      icon: const Icon(Icons.clear)),
                ),
              ),

              MaterialButton(onPressed: _getRoomCode,
                color: Colors.blue,
                child: const Text('Get Room No.', style: TextStyle(color: Colors.white),),
              ),

              MaterialButton(onPressed: _getPath,
                color: Colors.blue,
                child: const Text('Get Path', style: TextStyle(color: Colors.white),),
              )
            ],
          )
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.camera_alt),
        label: const Text("Current Location"),
        onPressed: _scanQR,
      ),
    );
  }
}
