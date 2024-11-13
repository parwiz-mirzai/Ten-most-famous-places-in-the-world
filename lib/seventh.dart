import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SeventhPlcae extends StatelessWidget {
  const SeventhPlcae({super.key});

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
            ' میدان تایمز ',
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
                'assets/maidan.jpg',
                fit: BoxFit.fill,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'میدان تایمز یکی از شلوغ‌ترین نقاط دنیا است که به خاطر تابلوهای نئونی بزرگ و تئاترهای برادوی شهرت دارد. این میدان به عنوان مرکز فرهنگی نیویورک شناخته می‌شود و هر ساله میلیون‌ها گردشگر را جذب می‌کند. جشن سال نو در میدان تایمز یکی از رویدادهای معروف جهانی است که در آن مردم جمع می‌شوند تا با سقوط توپ در نیمه‌شب سال نو را جشن بگیرند.',
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
                        'https://fa.wikipedia.org/wiki/%D8%AA%D8%A7%DB%8C%D9%85%D8%B2_%D8%A7%D8%B3%DA%A9%D9%88%D8%A6%D8%B1');
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
