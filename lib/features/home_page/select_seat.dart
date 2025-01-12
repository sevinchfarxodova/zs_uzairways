import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zs_airways/core/constants/colors.dart';
import 'package:zs_airways/features/home_page/widgets/seats.dart';

import '../auth/widgets/arrow.dart';

class SelectSeat extends StatefulWidget {
  const SelectSeat({super.key});

  @override
  State<SelectSeat> createState() => _SelectSeatState();
}

class _SelectSeatState extends State<SelectSeat> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Arrow(
                onPressed: () {
                  Navigator.pop(context);
                },
                imgUrl: "assets/images/arrow_left.png",
              ),
               SizedBox(height: 22,),
              Text('Passenger Info',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),),
              SizedBox(height: 20,),
              //passenger info
              Container(
                padding: EdgeInsets.all(10),
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
                //info passenger
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // new york
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Wed, OCT 26 2022',style: TextStyle(
                          fontSize: 12,
                          color: AppColors.grey,
                        ),),
                        SizedBox(height: 4,),
                        Text('New York, USA',style: TextStyle(
                          fontSize: 12,
                          color: AppColors.black,
                        ),),
                        SizedBox(height: 4,),
                        Text('(LGA)',style: TextStyle(
                          fontSize: 12,
                          color: AppColors.grey,
                        ),),
                      ],
                    ),
                    //photo
                    Container(
                      width: 62,
                      height: 32,
                      decoration: BoxDecoration(
                        color: AppColors.blue,
                          borderRadius: BorderRadius.circular(80),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.05),
                            spreadRadius: 1,
                          ),
                        ],
                      ),
                      child:
                      Image.asset('assets/images/plane.png',color: AppColors.white,),
                    ),
                    // danang
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('9:37 PM',style: TextStyle(
                          fontSize: 12,
                          color: AppColors.grey,
                        ),),
                        SizedBox(height: 4,),
                        Text('Danang, VIE',style: TextStyle(
                          fontSize: 12,
                          color: AppColors.black,
                        ),),
                        SizedBox(height: 4,),
                        Text('(DAD)',style: TextStyle(
                          fontSize: 12,
                          color: AppColors.grey,
                        ),),
                      ],
                    ),
                  ],
                ),
      
              ),
              SizedBox(height: 12,),
              //selection seat
            ],
          ),
        ),
      ),
    );
  }
}
