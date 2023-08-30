import 'package:flutter/material.dart';
import 'package:news_app/services/provider.dart';
import 'package:provider/provider.dart';
import 'package:news_app/services/provider.dart';

class SettingsView extends StatefulWidget {
  SettingsView({
    super.key,
  });

  // bool? isChanged;

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: themeChange.darkTheme ? Colors.grey[700] : Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    spreadRadius: 1,
                    color: Colors.black,
                  ),
                ],
              ),
              height: 60,
              width: double.infinity,
              child: ListTile(
                title: Text(
                  'Dark Mode',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                trailing: Switch(
                  value: themeChange.darkTheme,
                  onChanged: (value) {
                    themeChange.darkTheme = value;
                  },
                  activeTrackColor: Colors.amber,
                  activeColor: Colors.black,
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

// @override
// Widget build(BuildContext context) {
//   final themeChange = Provider.of<DarkThemeProvider>(context);
// ...
// Checkbox(
//   value: themeChange.darkTheme, 
//   onChanged: (bool value) {
//   themeChange.darkTheme = value;
// })


// Row(
//                 children: [
//                   SizedBox(
//                     width: 10,
//                   ),
//                   Text(
//                     'Dark Mode',
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   Spacer(),
//                   Switch(
//                     value: isChanged ?? false,
//                     onChanged: (value) {
//                       value = isChanged ?? false;
//                     },
//                     activeTrackColor: Colors.amber,
//                     activeColor: Colors.amberAccent,
//                   )
//                 ],
//               ),