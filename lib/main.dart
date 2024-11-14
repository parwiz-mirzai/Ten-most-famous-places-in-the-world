import 'package:famous_places/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
// this is our splash screen class
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), _navigateToHome);
  }

  void _navigateToHome() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => const HomePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 226, 202, 157),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('assets/final.jpg'),
              height: 220,
            ),
            SizedBox(height: 20),
            Text(
              'ده مکان‌ مشهور جهان ',
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(height: 20),
            Text(
              'V 0.1.1',
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(height: 25),
            CupertinoActivityIndicator(
              color: Color.fromARGB(255, 180, 158, 158),
              radius: 20,
            )
          ],
        ),
      ),
    );
  }
}
