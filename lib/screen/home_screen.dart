import 'package:degopay_app/colors/color_style.dart';
import 'package:degopay_app/widget/item_list/item_list_style1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<Null> refreshList() async {
    await Future.delayed(const Duration(seconds: 2));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: silver,
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 50),
            child: Row(
              children: [
                Container(
                  height: 50,
                  child: const CircleAvatar(
                    radius: 48,
                    backgroundImage: AssetImage(
                      'assets/images/ic_user.jpg',
                    ),
                  ),
                ),
                Text(
                  'Hi ,',
                  style: GoogleFonts.acme(
                    color: primarySilver,
                  ),
                ),
                Text(
                  'Mahbubi',
                  style: GoogleFonts.acme(
                    color: black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.0),
                  ),
                ),
                // Container(
                // margin: const EdgeInsets.only(left: 150),
                // child: const
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.only(right: 15),
                    child: const Icon(
                      Icons.notifications_none_outlined,
                      color: primarySilver,
                      size: 35,
                    ),
                  ),
                )

                // )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30, left: 20, right: 20),
            // color: primaryPurple,
            height: 200,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: primaryPurple,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5),
                topRight: Radius.circular(5),
                bottomLeft: Radius.circular(5),
                bottomRight: Radius.circular(5),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 25, top: 25),
                  child: Row(
                    children: [
                      Text(
                        'Saldo Saat ini',
                        style: GoogleFonts.acme(
                          color: white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 25, top: 10),
                  child: Row(
                    children: [
                      Text(
                        'RP.1.000.000,00',
                        style: GoogleFonts.acme(
                          color: white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 26, top: 23),
            child: Row(
              children: [
                Text(
                  'History Transaksi',
                  style: GoogleFonts.acme(
                    color: black,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Container(
              height: 310,
              color: silver,
              child: RefreshIndicator(
                onRefresh: refreshList,
                backgroundColor: purple,
                color: white,
                child: ListView.builder(
                  itemCount: 50,
                  itemBuilder: (context, i) {
                    return const ItemListViewStyle();
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
