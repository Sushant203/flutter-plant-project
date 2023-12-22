import 'package:flutter/material.dart';
import 'package:my_app/pages/fav.dart';
import 'package:my_app/pages/home_page.dart';
import 'package:my_app/pages/profile.dart';
import 'package:my_app/pages/scanner.dart';
import 'package:my_app/pages/store.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _currentIndex = 0;
  List<Widget> pages = const [
    HomePage(),
    FavPage(),
    ScannerPage(),
    StorePage(),
    ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              _currentIndex = value;
            });
            print(value);
          },
          currentIndex: _currentIndex,
          selectedItemColor: Theme.of(context).primaryColor,
          unselectedItemColor: Colors.black,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedIconTheme: IconThemeData(size: 35.00),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.qr_code_scanner_rounded), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.store), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "")
          ]),
      body: pages[_currentIndex],
    );
  }
}
