import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FirstPlace extends StatelessWidget {
  const FirstPlace({super.key});

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
            'برج ایفل',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: screenWidth * 0.9,
                height: 250,
                child: Image.asset(
                  'assets/ef.jpg',
                  fit: BoxFit.fill,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  ' برج ایفل در ابتدا با انتقادات زیادی روبرو بود و برخی آن را زشت می‌دانستند. اما به مرور زمان به نماد شهر پاریس و حتی فرانسه تبدیل شد. این برج دارای سه طبقه است که بازدیدکنندگان می‌توانند از آن‌ها بالا بروند و چشم‌انداز زیبایی از شهر را مشاهده کنند. در شب، برج با نورپردازی زیبا روشن می‌شود.این برج در سال‌های 1887 تا 1889 برای نمایشگاه جهانی پاریس ساخته شد.گوستاو ایفل، مهندس فرانسوی، طراحی و ساخت این برج را بر عهده داشت.',
                  textAlign: TextAlign.right,
                  textDirection: TextDirection.rtl,
                  style: TextStyle(fontSize: 20),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    launchURL(
                        'https://fa.wikipedia.org/wiki/%D8%A8%D8%B1%D8%AC_%D8%A7%DB%8C%D9%81%D9%84');
                  },
                  child: const Text(
                    'بیشتر بدانید',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
