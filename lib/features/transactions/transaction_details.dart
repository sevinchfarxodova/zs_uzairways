import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/constants/colors.dart';
import '../auth/widgets/arrow.dart';

class TransactionDetails extends StatelessWidget {
  const TransactionDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(padding: EdgeInsets.only(left: 20, right: 20),
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
            height: 16,
          ),
          Text(
            'Transaction Details',
            style: TextStyle(
                color: AppColors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 22,
          ),
          Card(),

        ],
      ),
      ),
    );
  }
}
