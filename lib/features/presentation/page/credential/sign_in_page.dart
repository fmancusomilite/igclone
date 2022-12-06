import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:igclone/consts.dart';
import 'package:igclone/features/presentation/page/credential/sign_up_page.dart';
import 'package:igclone/features/presentation/widgets/button_container_widget.dart';
import 'package:igclone/features/presentation/widgets/form_container_widget.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: true,
      top: false,
      child: Scaffold(
        backgroundColor: backGroundColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10.0,
            vertical: 10.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Container(),
                flex: 2,
              ),
              Center(
                child: SvgPicture.asset(
                  "assets/ig.svg",
                ),
              ),
              sizeVer(30),
              const FormContainerWidget(
                hintText: "Email",
              ),
              sizeVer(15),
              const FormContainerWidget(
                hintText: "Password",
                isPasswordField: true,
              ),
              sizeVer(15),
              ButtonContainerWidget(
                color: blueColor,
                text: "Sign In",
                onTapListener: () {},
              ),
              Flexible(
                child: Container(),
                flex: 2,
              ),
              Divider(
                color: secondaryColor,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account? ",
                    style: TextStyle(
                      color: primaryColor,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamedAndRemoveUntil(context, PageConst.signUpPage, (route) => false);
                      /*Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpPage()),
                            (route) => false,
                      );*/
                    },
                    child: Text(
                      "Sign Up.",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
