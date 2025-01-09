import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zs_airways/features/transactions/widgets/card.dart';

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
          MyCard(),
          SizedBox(height: 14,),
          Column(
            children: [
              Row(
              children: [
                Text(
                  'Status',
                  style: TextStyle(
                    fontSize: 12,
                    color: AppColors.grey
                  ),
                ),
                SizedBox(
                  width: 80,
                ),
                Text(
                  'Success',
                  style: TextStyle(fontSize: 12,
                      color: AppColors.blue),
                ),
              ],
              ),
              SizedBox(height: 16,),
              Row(
                children: [
                  Text(
                    'Invoice',
                    style: TextStyle(
                        fontSize: 12,
                        color: AppColors.grey
                    ),
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Text(
                    'INV23124131332',
                    style: TextStyle(fontSize: 12,
                        color: AppColors.black),
                  ),
                ],
              ),
              SizedBox(height: 16,),
              Row(
                children: [
                  Text(
                    'Transaction Date',
                    style: TextStyle(
                        fontSize: 12,
                        color: AppColors.grey
                    ),
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Text(
                    'Wed, 18 Oct 2024',
                    style: TextStyle(fontSize: 12,
                        color: AppColors.black),
                  ),
                ],
              ),
              SizedBox(height: 16,),
              Row(
                children: [
                  Text(
                    'Payment Method',
                    style: TextStyle(
                        fontSize: 12,
                        color: AppColors.grey
                    ),
                  ),
                  SizedBox(
                    width: 90,
                  ),
                  Text(
                    'Paytren',
                    style: TextStyle(fontSize: 12,
                        color: AppColors.blue),
                  ),
                ],
              ),
              SizedBox(height: 16,),
            ],
          )
        ],
      ),
      ),
    );
  }
}
