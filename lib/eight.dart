import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:url_launcher/url_launcher.dart';

class EightPlace extends StatelessWidget {
  const EightPlace({super.key});

  @override
  Widget build(BuildContext context) {
    void launchURL(String url) async {
      // ignore: deprecated_member_use
      if (await canLaunch(url)) {
        // ignore: deprecated_member_use
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 218, 233, 210),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 223, 212, 179),
        title: const Center(
          child: Text(
            '  آکروپولیس ',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: screenWidth * 0.9,
              height: 250,
              child: Image.asset(
                'assets/ston.jpg',
                fit: BoxFit.fill,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'آکروپولیس یک تپه سنگی است که معابد باستانی بر روی آن واقع شده‌اند، از جمله پارثنون که به الهه آتنا تقدیم شده است. آکروپولیس نه تنها یک مکان مذهبی بلکه نمادی از فرهنگ و تمدن یونانی است. این مکان همچنین در فهرست میراث جهانی یونسکو قرار دارد.معابد آکروپولیس عمدتاً در قرن 5 قبل از میلاد ساخته شدند.',
                textAlign: TextAlign.right,
                textDirection: TextDirection.rtl,
                style: TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    launchURL(
                        'https://fa.wikipedia.org/wiki/%D8%A2%DA%A9%D8%B1%D9%88%D9%BE%D9%88%D9%84%DB%8C%D8%B3');
                  },
                  child: const Text(
                    'بیشتر بدانید',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
