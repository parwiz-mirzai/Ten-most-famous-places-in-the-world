import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ThirdPlace extends StatelessWidget {
  const ThirdPlace({super.key});

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
            'دیوار بزرگ چین  ',
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
                'assets/chain.jpg',
                fit: BoxFit.fill,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'دیوار بزرگ چین نه تنها یک ساختار دفاعی بود بلکه به عنوان یک نماد از اتحاد مردم چین نیز شناخته می‌شود. این دیوار شامل برج‌های نگهبانی، دروازه‌ها و دیگر سازه‌هاست. برخی از بخش‌های دیوار به خوبی حفظ شده‌اند و برخی دیگر در حال تخریب هستند.ساخت دیوار بزرگ چین به دوران مختلفی برمی‌گردد و بخش‌های مختلف آن در طول قرن‌ها ساخته شده است.',
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
                        'https://fa.wikipedia.org/wiki/%D8%AF%DB%8C%D9%88%D8%A7%D8%B1_%D8%A8%D8%B2%D8%B1%DA%AF_%DA%86%DB%8C%D9%86');
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
