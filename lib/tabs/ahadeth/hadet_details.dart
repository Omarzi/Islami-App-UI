import 'package:flutter/material.dart';
import 'package:islami_app_ui/tabs/ahadeth/ahadeth.dart';
import 'package:islami_app_ui/tabs/ahadeth/hadeth_details_item.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName = 'hadethdetails';

  @override
  Widget build(BuildContext context) {
    HadethModel model =
        ModalRoute.of(context)!.settings.arguments as HadethModel;
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
                model.title,
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            body: ListView.separated(
              itemBuilder: (context, index) {
                return HadethDetailsItem(
                  model.content[index].toString(),
                );
              },
              separatorBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 50,
                  ),
                  color: Theme.of(context).primaryColor,
                  height: 1,
                );
              },
              itemCount: model.content.length,
            ),
          ),
        ],
      ),
    );
  }
}
