import 'package:flutter/material.dart';
import 'package:health/screens/reset_password.dart';
import 'package:health/screens/signup.dart';
import 'package:health/theme.dart';
import 'package:health/widgets/login_form.dart';
//import 'package:health/widgets/login_option.dart';
import 'package:health/widgets/primary_button.dart';

import '../navigation_home_screen.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: kDefaultPadding,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 120,
              ),
              Text(
                'Sức khỏe điện tử',
                style: titleText,
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    'Bạn chưa có tài khoản?',
                    style: subTitle,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'Đăng ký',
                      style: textButton.copyWith(
                        decoration: TextDecoration.underline,
                        decorationThickness: 1,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              LogInForm(),
              SizedBox(
                height: 20,
              ),
              // GestureDetector(
              //   onTap: () {
              //     Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //             builder: (context) => ResetPasswordScreen()));
              //   },
              //   child: Text(
              //     'Quên mật khẩu?',
              //     style: TextStyle(
              //       color: kZambeziColor,
              //       fontSize: 14,
              //       decoration: TextDecoration.underline,
              //       decorationThickness: 1,
              //     ),
              //   ),
              // ),
              // SizedBox(
              //   height: 20,
              // ),
              GestureDetector(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (_) => NavigationHomeScreen()),
                        (route) => false);
                  },
                  child: PrimaryButton(buttonText: 'Đăng Nhập')),

              //LoginOption(),
            ],
          ),
        ),
      ),
    );
  }
}
