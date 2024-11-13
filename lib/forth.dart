import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ForthPlace extends StatelessWidget {
  const ForthPlace({super.key});

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
            ' تاج محل',
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
                'assets/taj.jpg',
                fit: BoxFit.fill,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'تاج محل به عنوان یک مقبره برای ممتاز محل، همسر شاه‌جهان ساخته شده است. این بنا از مرمر سفید ساخته شده و دارای تزئینات زیبا از سنگ‌های قیمتی است. باغ‌های اطراف تاج محل نیز به زیبایی آن افزوده‌اند. تاج محل به عنوان یکی از بهترین نمونه‌های معماری اسلامی در جهان شناخته می‌شود و هر ساله میلیون‌ها گردشگر را جذب می‌کند.ساخت تاج محل در سال 1632 آغاز شد و در سال 1653 به پایان رسید.',
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
                        ' https://fa.wikipedia.org/wiki/%D8%AA%D8%A7%D8%AC_%D9%85%D8%AD%D9%84');
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
