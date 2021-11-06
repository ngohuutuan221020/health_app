import 'package:flutter/material.dart';
import 'package:health/screens/login.dart';
import 'package:health/theme.dart';
import 'package:health/widgets/primary_button.dart';
import 'package:health/widgets/reset_form.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: kDefaultPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 250,
            ),
            Text(
              'Đặt lại mật khẩu',
              style: titleText,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Nhâp mail của bạn',
              style: subTitle.copyWith(fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 10,
            ),
            ResetForm(),
            SizedBox(
              height: 40,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LogInScreen(),
                      ));
                },
                child: PrimaryButton(buttonText: 'Đặt lại mật khẩu')),
          ],
        ),
      ),
    );
  }
}
