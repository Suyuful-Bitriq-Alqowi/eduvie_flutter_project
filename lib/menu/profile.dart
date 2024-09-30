import 'package:eduvie_movie/widget/color.dart';
import 'package:eduvie_movie/widget/text.dart';
import 'package:flutter/material.dart';

class ProfileMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("History Menu"),
      ),
      body: Center(
        child: MyTxt(
          text: "ini history",
          textColor: primaryBackground,
        ),
      ),
    );
  }
}
