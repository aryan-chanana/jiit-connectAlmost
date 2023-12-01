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
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.black,
        title: const Text("Path Finder",
            style: TextStyle(
              color: Colors.white,
            )),
      ),
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/lbg.png"),
                fit: BoxFit.cover,
              )),
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Text(
                result,
                style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              TextField(
                controller: destination,
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: '  Enter Destination',
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      destination.clear();
                    },
                    icon: const Icon(Icons.clear),
                    color: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              MaterialButton(
                onPressed: _getRoomCode,
                color: Colors.white,
                child: const Text(
                  'Get Room No.',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              MaterialButton(
                onPressed: _getPath,
                color: Colors.white,
                child: const Text(
                  'Get Path',
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          )),
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.camera_alt),
        label: const Text("Current Location"),
        onPressed: _scanQR,
      ),
    );
  }
}