import 'package:flutter/material.dart';
import 'package:igclone/consts.dart';

class ActivityPage extends StatelessWidget {
  const ActivityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        backgroundColor: backGroundColor,
        centerTitle: false,
        title: Text(
          "Activity",
          style: TextStyle(
            color: primaryColor,
          ),
        ),
      ),
    );
  }
}
