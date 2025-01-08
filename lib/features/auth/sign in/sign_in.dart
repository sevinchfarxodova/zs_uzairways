import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zs_airways/core/constants/colors.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
backgroundColor: AppColors.white,
      body: Padding(padding: EdgeInsets.only(left:20, right: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Sign In',style: TextStyle(
            color: AppColors.black,
            fontSize: 40,
            fontWeight: FontWeight.bold
          ),),
          SizedBox(
            height: 14,
          ), Text('data'),

        ],
      ),
      ),
    );
  }
}
