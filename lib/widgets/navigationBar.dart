import 'package:flutter/material.dart';
import 'package:news_app/views/news_view.dart';
import 'package:news_app/views/settings_view.dart';

class navigationBar extends StatefulWidget {
  navigationBar({super.key});

  @override
  State<navigationBar> createState() => _navigationBarState();
}

class _navigationBarState extends State<navigationBar> {
  int index = 0;

  List<Widget> screens = [
    const NewsView(),
    SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (currIndex) {
          setState(() {
            index = currIndex;
          });
        },
        selectedFontSize: 14.0,
        selectedItemColor: Colors.amber,
        unselectedIconTheme: IconThemeData(color: Colors.grey),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              // color: Colors.amber,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              // color: Colors.amber,
            ),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
