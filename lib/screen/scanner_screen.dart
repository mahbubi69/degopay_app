import 'package:degopay_app/colors/color_style.dart';
import 'package:degopay_app/screen/pin_screen.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class ScannerScreen extends StatefulWidget {
  const ScannerScreen({Key? key}) : super(key: key);

  @override
  State<ScannerScreen> createState() => _ScannerScreenState();
}

class _ScannerScreenState extends State<ScannerScreen> {
  bool flashOn = false, frontCam = false;
  GlobalKey qrKey = GlobalKey();
  late QRViewController qrViewController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          QRView(
            key: qrKey,
            overlay: QrScannerOverlayShape(borderColor: white),
            onQRViewCreated: (QRViewController qrController) {
              this.qrViewController = qrController;
              qrViewController.scannedDataStream.listen((val) {
                print(val);
                if (mounted) {
                  qrViewController.dispose();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PinScreen()));
                }
              });
            },
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: const EdgeInsets.only(top: 60),
              child: const Text(
                'Scanner',
                style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.bold, color: white),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ButtonBar(
              alignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  color: white,
                  icon: Icon(flashOn ? Icons.flash_on : Icons.flash_off),
                  onPressed: () {
                    setState(() {
                      flashOn = !flashOn;
                    });
                    qrViewController.toggleFlash();
                  },
                ),
                IconButton(
                    color: white,
                    icon:
                        Icon(frontCam ? Icons.camera_front : Icons.camera_rear),
                    onPressed: () {
                      setState(() {
                        frontCam = !frontCam;
                      });
                      qrViewController.flipCamera();
                    }),
                IconButton(
                    color: white,
                    icon: const Icon(Icons.close),
                    onPressed: () => Navigator.pop(context))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
