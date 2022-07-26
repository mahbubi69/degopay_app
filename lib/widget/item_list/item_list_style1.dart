import 'package:degopay_app/colors/color_style.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemListViewStyle extends StatelessWidget {
  const ItemListViewStyle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 7, left: 15, right: 15),
      decoration: const BoxDecoration(
          color: white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          )),
      child: Container(
        margin: const EdgeInsets.all(15),
        // padding: const EdgeInsets.only(top: 07),
        child: Row(
          children: [
            Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.0),
                image: const DecorationImage(
                  image: AssetImage('assets/images/logo_degovan.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 8),
                    child: Text(
                      'Nama Transaksi',
                      style: GoogleFonts.acme(
                        color: black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 03.1,
                  ),
                  Text(
                    'kemarin, 12:49 PM',
                    style: GoogleFonts.acme(
                      color: black,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 8.0),
              ),
            ),
            Container(
              // margin: const EdgeInsets.only(left: 40),
              child: const Text('+Rp.2.000.000,-'),
            ),
          ],
        ),
      ),
    );
  }
}
