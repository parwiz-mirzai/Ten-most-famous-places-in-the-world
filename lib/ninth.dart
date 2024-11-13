import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NinthPlace extends StatelessWidget {
  const NinthPlace({super.key});

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
            ' استون‌هنج ',
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
                'assets/heng.jpg',
                fit: BoxFit.fill,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'استون‌هنج یک دایره سنگی بزرگ است که شامل سنگ‌های عظیم و سنگ‌های کوچک‌تر است. هدف واقعی ساخت این بنا هنوز مشخص نیست، اما نظریه‌هایی درباره کاربردهای مذهبی، نجومی یا اجتماعی آن وجود دارد. استون‌هنج به عنوان یکی از بزرگ‌ترین معماهای باستان‌شناسی شناخته می‌شود.این بنا بین 3000 تا 2000 سال قبل از میلاد ساخته شده است.',
                textAlign: TextAlign.right,
                textDirection: TextDirection.rtl,
                style: TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    launchURL(
                        'https://fa.wikipedia.org/wiki/%D8%A7%D8%B3%D8%AA%D9%88%D9%86%E2%80%8C%D9%87%D9%86%D8%AC');
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
