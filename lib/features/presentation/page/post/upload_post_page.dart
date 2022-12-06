import 'package:flutter/material.dart';
import 'package:igclone/consts.dart';

class UploadPage extends StatelessWidget {
  const UploadPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      body: Center(
        child: Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            color: secondaryColor.withOpacity(.3),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Icon(
              Icons.upload,
              color: primaryColor,
              size: 40,
            ),
          ),
        ),
      ),
    );
  }
}
