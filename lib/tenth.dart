import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TenthPlace extends StatelessWidget {
  const TenthPlace({super.key});

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
            'ساحل بوندای',
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
                'assets/beach.jpg',
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'ساحل Bondi یکی از محبوب‌ترین سواحل دنیا است که به خاطر آب‌های آبی و شن‌های نرم خود شهرت دارد. این ساحل مقصدی عالی برای شنا، موج‌سواری و تفریح است. همچنین اطراف ساحل کافه‌ها، رستوران‌ها و فروشگاه‌های متنوعی وجود دارد که باعث جذابیت بیشتر این مکان می‌شود.',
                textAlign: TextAlign.right,
                textDirection: TextDirection.rtl,
                style: TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    launchURL(
                        ' https://bektashtravel.com/%D8%A8%D9%87%D8%AA%D8%B1%DB%8C%D9%86-%D8%B3%D9%88%D8%A7%D8%AD%D9%84-%D8%B3%DB%8C%D8%AF%D9%86%DB%8C-%DA%A9%D8%AF%D8%A7%D9%85%D9%86%D8%AF%D8%9F/');
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
