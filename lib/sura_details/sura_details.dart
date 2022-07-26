import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app_ui/sura_details/suran_details_item.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = "suraDetails";

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  var SuraDetailsArg;

  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    SuraDetailsArg =
        ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;

    if (verses.isEmpty) {
      loadFile(SuraDetailsArg.index);
    }

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
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          body: verses.isEmpty
              ? Center(
                  child: CircularProgressIndicator(
                    color: Theme.of(context).primaryColor,
                  ),
                )
              : ListView.separated(
                  separatorBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 50,
                      ),
                      color: Theme.of(context).primaryColor,
                      height: 1,
                    );
                  },
                  itemCount: verses.length,
                  itemBuilder: (context, index) {
                    return SuraDetailsItem(
                      verses[index].toString(),
                    );
                  },
                ),
        ),
      ],
    );
  }

  void loadFile(int index) async {
    String content = await rootBundle.loadString(
      'assets/files/${index + 1}.txt',
    );
    List<String> ayat = content.split('\n');
    verses = ayat;
    setState(() {});
  }
}

class SuraDetailsArgs {
  String SuraName;
  int index;

  SuraDetailsArgs(this.SuraName, this.index);
}
