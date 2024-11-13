import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SecondPlace extends StatelessWidget {
  const SecondPlace({super.key});

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
            ' کولوسئوم ',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: screenWidth * 0.9,
              height: 250,
              child: Image.asset(
                'assets/clo.jpg',
                fit: BoxFit.fill,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'این آمفی‌تئاتر بزرگ به شکل بیضی است و ظرفیت آن حدود 50,000 تا 80,000 تماشاگر بوده است. کولوسئوم محل برگزاری نبردهای گلادیاتورها، نمایش‌های عمومی و دیگر رویدادهای سرگرم‌کننده بوده است. امروزه این بنا یکی از بزرگ‌ترین جاذبه‌های گردشگری در رم است و به عنوان یک نماد از تاریخ باستانی روم شناخته می‌شود.ساخت کولوسئوم در سال 70 میلادی آغاز و در سال 80 میلادی به پایان رسید.',
                textAlign: TextAlign.right,
                textDirection: TextDirection.rtl,
                style: TextStyle(fontSize: 20),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  launchURL(
                      ' https://fa.wikipedia.org/wiki/%DA%A9%D9%88%D9%84%D9%88%D8%B3%D8%A6%D9%88%D9%85');
                },
                child: const Text(
                  'بیشتر بدانید',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
    );
  }
}
