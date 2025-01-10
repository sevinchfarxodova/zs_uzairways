import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';
import '../../../core/route/route_names.dart';
import '../widgets/arrow.dart';
import '../widgets/long_button.dart';
import '../widgets/textfield.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Arrow(
              onPressed: () {
                Navigator.pop(context);
              },
              imgUrl: "assets/images/arrow_forward_ios.png",
            ),
            SizedBox(
              height: 26,
            ),
            Text(
              'Sign Up',
              style: TextStyle(
                  color: AppColors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 14,
            ),
            Text(
              'Start Your Journey with affordable price',
              style: TextStyle(color: AppColors.grey, fontSize: 14),
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              'EMAIL',
              style: TextStyle(color: AppColors.grey, fontSize: 12),
            ),
            SizedBox(
              height: 8,
            ),
            Textfield(text: 'Enter Your Email'),
            SizedBox(
              height: 24,
            ),
            LongButton(
                text: 'Sign in',
                onPressed: () {
                  Navigator.pushNamed(context, RouteNames.passcode);
                },
                img: "assets/images/check_circle.png"),
            SizedBox(
              height: 8,
            ),
            Center(
              child: Text(
                'Or Sign Up With',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.grey,
                  fontSize: 14,
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                social_buttons(Icons.facebook),
                social_buttons(Icons.g_mobiledata_rounded),
                social_buttons(Icons.apple),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Don’t Have an Account?',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: AppColors.grey, fontSize: 14),
                ),
                TextButton(
                    onPressed: () {
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(color: AppColors.blue, fontSize: 14),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget social_buttons(IconData icon) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: Color(0xFFF2F3F6),
      minimumSize: Size(98, 64),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
    ),
    onPressed: () {},
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.black,
          size: 32,
        ),
      ],
    ),
  );
}

