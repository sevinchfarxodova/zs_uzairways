import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zs_airways/core/constants/colors.dart';

import '../auth/widgets/arrow.dart';

class DeleteAccount extends StatelessWidget {
  const DeleteAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Arrow(
              onPressed: () {
                Navigator.pop(context);
              },
              imgUrl: "assets/images/arrow_forward_ios.png",
            ),
            SizedBox(height: 18,),
            Text('Delete Account',
            style: TextStyle(
              fontSize: 24,
              color: AppColors.black
            ),),

          ],
        ),
      ),
    );
  }
}
