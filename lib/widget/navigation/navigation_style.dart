import 'package:degopay_app/colors/color_style.dart';
import 'package:degopay_app/screen/home_screen.dart';
import 'package:degopay_app/screen/profile_screen.dart';
import 'package:degopay_app/screen/scanner_screen.dart';
import 'package:flutter/material.dart';

class NavigationStyle extends StatefulWidget {
  const NavigationStyle({Key? key}) : super(key: key);

  @override
  State<NavigationStyle> createState() => _NavigationStyleState();
}

class _NavigationStyleState extends State<NavigationStyle> {
  int layoutPage = 0;
  final List<Widget> ListLayout = [
    const HomeScreen(),
    const ProfileScreen(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const HomeScreen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.center_focus_strong_outlined),
        backgroundColor: primaryPurple,
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const ScannerScreen()));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: const EdgeInsets.only(right: 50, bottom: 10),
              child: IconButton(
                onPressed: () {
                  setState(() {
                    currentScreen = const HomeScreen();
                    layoutPage = 0;
                  });
                },
                icon: Icon(
                  Icons.dashboard_outlined,
                  size: 35,
                  color: layoutPage == 0 ? primaryPurple : primarySilver,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 50, bottom: 10),
              child: IconButton(
                onPressed: () {
                  setState(() {
                    currentScreen = const ProfileScreen();
                    layoutPage = 1;
                  });
                },
                icon: Icon(
                  Icons.person_outline,
                  size: 35,
                  color: layoutPage == 1 ? primaryPurple : primarySilver,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
