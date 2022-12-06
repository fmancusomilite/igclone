import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:igclone/consts.dart';
import 'package:igclone/features/presentation/page/credential/sign_in_page.dart';
import 'package:igclone/features/presentation/widgets/button_container_widget.dart';
import 'package:igclone/features/presentation/widgets/form_container_widget.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

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
              sizeVer(20),
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Image.asset("assets/icon.png"),
                    ),
                    Positioned(
                      right: -10,
                      bottom: -15,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add_a_photo,
                          color: blueColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              sizeVer(30),
              const FormContainerWidget(
                hintText: "Username",
              ),
              sizeVer(15),
              const FormContainerWidget(
                hintText: "Email",
              ),
              sizeVer(15),
              const FormContainerWidget(
                hintText: "Password",
                isPasswordField: true,
              ),
              sizeVer(15),
              const FormContainerWidget(
                hintText: "Bio",
              ),
              sizeVer(15),
              ButtonContainerWidget(
                color: blueColor,
                text: "Sign Up",
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
                    "Already have an account? ",
                    style: TextStyle(
                      color: primaryColor,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamedAndRemoveUntil(context, PageConst.signInPage, (route) => false);
                      /*Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => SignInPage()),
                        (route) => false,
                      );*/
                    },
                    child: Text(
                      "Sign In.",
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
