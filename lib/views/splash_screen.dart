import 'package:flutter/material.dart';
import 'package:news_app/widgets/navigationBar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    var d = const Duration(seconds: 5);
    //delayed 5 seconds to go to other screen
    Future.delayed(d, () {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => navigationBar()),
        (route) => false,
      );
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.grey.shade600,
                Colors.grey.shade500,
                Colors.grey.shade600,
              ],
            ),
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Container(
              //   color: kPrimaryColor,
              //   child: Image.asset(
              //     'images/doctors.png',
              //     scale: 0.9,
              //   ),
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'News',
                    style: TextStyle(
                      // letterSpacing: 1,
                      color: Colors.white,
                      // fontFamily: 'BebasNeue',
                      // fontWeight: FontWeight.bold,
                      fontSize: 32.0,
                    ),
                  ),
                  Text(
                    'Cloud',
                    style: TextStyle(
                      // letterSpacing: 1,
                      color: Colors.amber,
                      // fontFamily: 'BebasNeue',
                      fontWeight: FontWeight.bold,
                      fontSize: 32.0,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
