import 'package:famous_places/about.dart';
import 'package:famous_places/eight.dart';
import 'package:famous_places/fifth.dart';
import 'package:famous_places/first.dart';
import 'package:famous_places/forth.dart';
import 'package:famous_places/ninth.dart';
import 'package:famous_places/second.dart';

import 'package:famous_places/seventh.dart';
import 'package:famous_places/sixth.dart';
import 'package:famous_places/tenth.dart';
import 'package:famous_places/third.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:share_plus/share_plus.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 218, 233, 210),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 223, 212, 179),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('ده تا از مشهورترین مکان‌های جهان '),
            PopupMenuButton(
              color: const Color.fromARGB(255, 223, 212, 179),
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(Icons.share),
                      TextButton(
                        onPressed: () {
                           // when we want to share our app
                          const String appLink =
                              'https://play.google.com/store/apps/details?id=com.example.famous_places';
                          Share.share(appLink);
                        },
                        child: const Text('به اشتراک گذاشتن  '),
                      ),
                    ],
                  ),
                ),
                PopupMenuItem(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(Icons.self_improvement),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AboutPage()));
                        },
                        child: const Text(' درباره'),
                      ),
                    ],
                  ),
                ),
                PopupMenuItem(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(Icons.exit_to_app),
                      TextButton(
                        onPressed: () {
                          // to exit from all system
                          // Navigator.pop(context);
                          // Navigator.pop(context);
                          
                          // when we implement our app in android device it exite the app
                          SystemNavigator.pop();
                        },
                        child: const Text('خروج'),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      body: ListView(
        // we call just our class and give parameters
        children: [
          MyListTile(context, 'برج ایفل', 'assets/ef.jpg', const FirstPlace()),
          MyListTile(
              context, 'کولوسئوم', 'assets/clo.jpg', const SecondPlace()),
          MyListTile(context, 'دیوار بزرگ چین', 'assets/chain.jpg',
              const ThirdPlace()),
          MyListTile(context, 'تاج محل', 'assets/taj.jpg', const ForthPlace()),
          MyListTile(context, 'برج‌های پتروناس', 'assets/pent.jpg',
              const FifthPlace()),
          MyListTile(
              context, 'چشم لندن', 'assets/landon.jpg', const SixthPlace()),
          MyListTile(context, 'میدان تایمز', 'assets/maidan.jpg',
              const SeventhPlcae()),
          MyListTile(
              context, 'آکروپولیس', 'assets/ston.jpg', const EightPlace()),
          MyListTile(
              context, 'ستون‌هنج', 'assets/heng.jpg', const NinthPlace()),
          MyListTile(
              context, 'ساحل بوندای', 'assets/beach.jpg', const TenthPlace()),
        ],
      ),
    );
  }
}
// in here we make our custom listTile claass
Widget MyListTile(BuildContext context, String title, String imagePath,
    Widget destinationPage) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => destinationPage),
      );
    },
    child: ListTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(Icons.arrow_back_ios),
          Text(
            title,
            style: const TextStyle(fontSize: 25),
          ),
          CircleAvatar(
            radius: 25,
            child: ClipOval(
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
                width: 150,
                height: 100,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
