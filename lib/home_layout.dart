import 'package:flutter/material.dart';
import 'package:islami_app_ui/tabs/ahadeth.dart';
import 'package:islami_app_ui/tabs/quran/quran.dart';
import 'package:islami_app_ui/tabs/radio.dart';
import 'package:islami_app_ui/tabs/tasbeh.dart';

class HomeLayout extends StatefulWidget {
  static const String routName = "Home";

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex = 0;

  List<Widget> tabs = [
    QuranScreen(),
    TasbehScreen(),
    RadioScreen(),
    AhadethScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Image.asset(
            "assets/images/main_background.png",
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.fill,
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                "Islami",
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            body: tabs[currentIndex],
            bottomNavigationBar: Theme(
              data: Theme.of(context).copyWith(
                canvasColor: Theme.of(context).primaryColor,
              ),
              child: BottomNavigationBar(
                onTap: (index) {
                  currentIndex = index;
                  setState(() {});
                },
                currentIndex: currentIndex,
                items: const [
                  BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage(
                        "assets/images/quran.png",
                      ),
                    ),
                    label: "Quran",
                  ),
                  BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage(
                        "assets/images/sebha.png",
                      ),
                    ),
                    label: "Tasbeh",
                  ),
                  BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage(
                        "assets/images/radio.png",
                      ),
                    ),
                    label: "Radio",
                  ),
                  BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage(
                        "assets/images/quran-quran-svgrepo-com.png",
                      ),
                    ),
                    label: "Ahadeth",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
