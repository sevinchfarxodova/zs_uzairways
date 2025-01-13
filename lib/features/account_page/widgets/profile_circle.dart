import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';

class ProfileCircle extends StatelessWidget {
  const ProfileCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
   //   width: double.infinity,
      height: 165,
      padding: EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: AppColors.blue,
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(40)),
      ),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('My Profile', style: TextStyle(
                fontSize: 20,
                color: AppColors.white
            ),),
            SizedBox(height: 18,),
            //profile
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset('assets/images/account.png'),
                    SizedBox(width: 18,),
                    //name,gmail
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Jos Creative',
                          style: TextStyle(
                              color: AppColors.white,
                              fontSize: 18
                          ),),
                        SizedBox(height: 4,),
                        Text('josphamdes@gmail.com',
                          style: TextStyle(
                              color: AppColors.white,
                              fontSize: 14
                          ),),
                        SizedBox(height: 4,),
                        Text('+1 654 785 4462',
                          style: TextStyle(
                              color: AppColors.white,
                              fontSize: 14
                          ),),
                        SizedBox(height: 4,),
                      ],
                    ),
                  ],
                ),
                Icon(Icons.edit_outlined, color: AppColors.white,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
