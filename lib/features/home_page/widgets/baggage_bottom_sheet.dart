import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';
import '../../auth/widgets/long_button.dart';

class BaggageBottomSheet extends StatelessWidget {
  const BaggageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
  return  SizedBox(
      height: 450,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            SizedBox(height: 10,),
            Text('Add Baggage',style: TextStyle(
                fontSize: 24
            ),),
            SizedBox(height: 18,),
            Text('1. Matt Murdock',
              style: TextStyle(
                  fontSize: 14
              ),
            ),
            SizedBox(height: 8,),
            // kgs
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Text('0 KG',
                        style: TextStyle(
                            fontSize: 24,
                            color: AppColors.black
                        ),
                      ),
                      Text('Free',
                        style: TextStyle(
                            fontSize: 12,
                            color: AppColors.grey
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10,),
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: AppColors.blue,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Text('5 KG',
                        style: TextStyle(
                            fontSize: 24,
                            color: AppColors.white
                        ),
                      ),
                      Text('Rp 210.000',
                        style: TextStyle(
                            fontSize: 12,
                            color: AppColors.white
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10,),
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Text('10 KG',
                        style: TextStyle(
                            fontSize: 24,
                            color: AppColors.black
                        ),
                      ),
                      Text('Rp 510.000',
                        style: TextStyle(
                            fontSize: 12,
                            color: AppColors.grey
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 6,),
            //info matt
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('1. Matt Murdock',style: TextStyle(
                          fontSize: 12,
                          color: AppColors.grey
                      ),),
                      Text('Rp. 210.000',style: TextStyle(
                          fontSize: 12,
                          color: AppColors.grey
                      ),),
                    ],
                  ),
                  SizedBox(height: 8,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Total',style: TextStyle(
                          fontSize: 12,
                          color: AppColors.grey
                      ),),
                      Text('Rp. 210.000',style: TextStyle(
                          fontSize: 12,
                          color: AppColors.grey
                      ),),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            LongButton(text: 'Add Baggage', onPressed: (){
              Navigator.pop(context);
            }, img: 'assets/images/add_circle.png')
          ],
        ),
      ),
    );
  }
}
