import 'package:degopay_app/colors/color_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => ProfileScreenState();
}

class ProfileScreenState extends State<ProfileScreen> {
  final double topWidgetHeight = 200.0;
  final double avatarRadius = 50.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: silver,
        body: Column(
          children: [
            Stack(
              children: [
                Column(
                  children: <Widget>[
                    Container(
                      color: primaryPurple,
                      // decoration: const BoxDecoration(
                      //   borderRadius: BorderRadius.only(
                      //     topLeft: Radius.circular(5),
                      //     topRight: Radius.circular(5),
                      //     bottomLeft: Radius.circular(5),
                      //     bottomRight: Radius.circular(5),
                      //   ),
                      // ),
                      height: topWidgetHeight,
                      // color: primaryPurple,
                    ),
                  ],
                ),
                Center(
                    child: Container(
                  margin: const EdgeInsets.only(top: 50),
                  child: Text(
                    'PROFILE',
                    style: GoogleFonts.acme(
                      fontSize: 25,
                      color: white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )),
                Positioned(
                  left: (MediaQuery.of(context).size.width / 2) - 65,
                  top: topWidgetHeight - 75,
                  child: const CircleAvatar(
                    radius: 65,
                    backgroundImage: AssetImage('assets/images/ic_user.jpg'),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Center(
                    child: Container(
                  margin: const EdgeInsets.only(top: 270),
                  child: Column(
                    children: [
                      Text(
                        'Muhammad Mahbubi',
                        style: GoogleFonts.acme(
                          fontSize: 20,
                          color: black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Android Developer',
                        style: GoogleFonts.acme(
                          fontSize: 15,
                          color: primarySilver,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          margin: const EdgeInsets.all(15),
                          padding: const EdgeInsets.only(left: 15),
                          height: 50,
                          decoration: const BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5),
                                topRight: Radius.circular(5),
                                bottomLeft: Radius.circular(5),
                                bottomRight: Radius.circular(5),
                              )),
                          child: Row(
                            children: [
                              Text(
                                'Edit Profile',
                                style: GoogleFonts.acme(
                                  color: black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Spacer(),
                              Container(
                                margin: const EdgeInsets.only(right: 25),
                                child: const Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: primarySilver,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          margin: const EdgeInsets.only(left: 15, right: 15),
                          padding: const EdgeInsets.only(left: 15),
                          height: 50,
                          decoration: const BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5),
                                topRight: Radius.circular(5),
                                bottomLeft: Radius.circular(5),
                                bottomRight: Radius.circular(5),
                              )),
                          child: Row(
                            children: [
                              Text(
                                'Message',
                                style: GoogleFonts.acme(
                                  color: black,
                                  fontWeight: FontWeight.bold,
                                ),
                                //  TextStyle(
                                //   color: black,
                                //   fontWeight: FontWeight.bold,
                                // ),
                              ),
                              const Spacer(),
                              Container(
                                margin: const EdgeInsets.only(right: 25),
                                child: const Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: primarySilver,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          margin: const EdgeInsets.only(
                              left: 15, right: 15, top: 15),
                          padding: const EdgeInsets.only(left: 15),
                          height: 50,
                          decoration: const BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5),
                                topRight: Radius.circular(5),
                                bottomLeft: Radius.circular(5),
                                bottomRight: Radius.circular(5),
                              )),
                          child: Row(
                            children: [
                              Text(
                                'Transaksiku',
                                style: GoogleFonts.acme(
                                  color: black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Spacer(),
                              Container(
                                margin: const EdgeInsets.only(right: 25),
                                child: const Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: primarySilver,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          margin: const EdgeInsets.only(
                              left: 15, right: 15, top: 15),
                          padding: const EdgeInsets.only(left: 15),
                          height: 50,
                          decoration: const BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(5),
                              bottomLeft: Radius.circular(5),
                              bottomRight: Radius.circular(5),
                            ),
                          ),
                          child: Row(
                            children: [
                              Text(
                                'Ubah Pin',
                                style: GoogleFonts.acme(
                                  color: black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Spacer(),
                              Container(
                                margin: const EdgeInsets.only(right: 25),
                                child: const Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: primarySilver,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          margin: const EdgeInsets.only(
                              left: 15, right: 15, top: 15),
                          padding: const EdgeInsets.only(left: 15),
                          height: 50,
                          decoration: const BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5),
                                topRight: Radius.circular(5),
                                bottomLeft: Radius.circular(5),
                                bottomRight: Radius.circular(5),
                              )),
                          child: Row(
                            children: [
                              Text(
                                'Log Out',
                                style: GoogleFonts.acme(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Spacer(),
                              Container(
                                margin: const EdgeInsets.only(right: 25),
                                child: const Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: primarySilver,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ))
              ],
            ),
          ],
        ));
  }

  // //dialog logout
  // Future<void> showLogoutDialog(String title, String message) {
  //   return showDialog(
  //     context: context,
  //     builder: (context) => AlertDialog(
  //       title: Text(title),
  //       content: Text(message),
  //       actions: <Widget>[
  //         TextButton(
  //           onPressed: () async {
  //             // final prefs = await SharedPreferences.getInstance();
  //             // final removeToken = await prefs.remove('Token');
  //             // final removeId = await prefs.remove('Id');
  //             Navigator.push(context,
  //                 MaterialPageRoute(builder: (context) => const ()));
  //           },
  //           child: const Text('Ok'),
  //         ),
  //         TextButton(
  //           onPressed: () async {
  //             Navigator.pop(context);
  //           },
  //           child: const Text('tidak'),
  //         ),
  //       ],
  //     ),
  //   );
}
