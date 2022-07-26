import 'package:flutter/material.dart';

class SuraNameItem extends StatelessWidget {
  String text;

  SuraNameItem(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {},
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline2,
        ),
      ),
    );
  }
}
