import 'package:degopay_app/colors/color_style.dart';
import 'package:flutter/material.dart';

class PinScreen extends StatefulWidget {
  const PinScreen({Key? key}) : super(key: key);

  @override
  State<PinScreen> createState() => _PinScreenState();
}

class _PinScreenState extends State<PinScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              height: 50,
            ),
            const Text(
              'Masukkan Pin Anda',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20, top: 30),
                  child: const Text(
                    'Pin',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, left: 15, right: 15),
              decoration: BoxDecoration(
                  color: silver, borderRadius: BorderRadius.circular(5)),
              child: Container(
                margin: const EdgeInsets.only(left: 10),
                child: const TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
