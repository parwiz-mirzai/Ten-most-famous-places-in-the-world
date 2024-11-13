import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FifthPlace extends StatelessWidget {
  const FifthPlace({super.key});

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
            'برج‌های پتروناس ',
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
                'assets/pent.jpg',
                fit: BoxFit.fill,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                ' برج‌های پتروناس با ارتفاع 452 متر، تا سال 2004 بلندترین ساختمان‌های جهان بودند. طراحی این برج‌ها الهام گرفته از معماری اسلامی و فرهنگ مالزیایی است. پل هوایی بین دو برج در طبقه 41 و 42 قرار دارد که بازدیدکنندگان می‌توانند از آن عبور کنند و منظره‌ای زیبا از شهر را مشاهده کنند.ین برج‌ها بین سال‌های 1993 تا 1998 ساخته شدند.',
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
                        ' https://fa.wikipedia.org/wiki/%D8%A8%D8%B1%D8%AC%E2%80%8C%D9%87%D8%A7%DB%8C_%D8%AF%D9%88%D9%82%D9%84%D9%88%DB%8C_%D9%BE%D8%AA%D8%B1%D9%88%D9%86%D8%A7%D8%B3');
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
