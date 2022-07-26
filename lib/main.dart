import 'package:flutter/material.dart';
import 'package:islami_app_ui/constants/my_theme.dart';
import 'package:islami_app_ui/home_layout.dart';
import 'package:islami_app_ui/sura_details/sura_details.dart';
import 'package:islami_app_ui/tabs/ahadeth/hadet_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeLayout.routName,
      routes: {
        HomeLayout.routName: (context) => HomeLayout(),
        SuraDetails.routeName: (context) => SuraDetails(),
        HadethDetails.routeName: (context) => HadethDetails(),
      },
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
    );
  }
}
