import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  bool _isDarkMode = false;

  @override
  void initState() {
    super.initState();
    _loadThemePreference();
  }

  // Load the user's theme preference
  void _loadThemePreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _isDarkMode = prefs.getBool('isDarkMode') ?? false;
    });
  }

  // Save the user's theme preference
  void _toggleTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _isDarkMode = !_isDarkMode;
      prefs.setBool('isDarkMode', _isDarkMode);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _isDarkMode ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 218, 233, 210),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 223, 212, 179),
          title: const Text(
            'تنظیمات',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Current Mode: ${_isDarkMode ? "Dark" : "Light"}',
              style: const TextStyle(fontSize: 24),
            ),
            IconButton(
              icon: Icon(_isDarkMode ? Icons.wb_sunny : Icons.nightlight_round),
              onPressed: _toggleTheme,
            ),
          ],
        ),
      ),
    );
  }
}
