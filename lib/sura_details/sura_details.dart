import 'package:flutter/material.dart';

class SuraDetails extends StatelessWidget {
  static const String routeName = "suraDetails";

  @override
  Widget build(BuildContext context) {
    var SuraDetailsArg =
    ModalRoute
        .of(context)
        ?.settings
        .arguments as SuraDetailsArgs;
    return Stack(
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
              SuraDetailsArg.SuraName,
              style: Theme
                  .of(context)
                  .textTheme
                  .headline1,
            ),
          ),
          body: ListView.builder(
            itemBuilder: (context, index) {
              return
            },
          ),
        ),
      ],
    );
  }
}

class SuraDetailsArgs {
  String SuraName;

  SuraDetailsArgs(this.SuraName);
}
