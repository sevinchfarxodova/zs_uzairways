import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zs_airways/core/constants/colors.dart';

class MyCard extends StatelessWidget {
   MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 0,
            blurRadius: 4,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        children: [
          SizedBox(height: 16,),
          Row(
            children: [
              Image.asset('assets/images/logo1.png', color: Colors.black,),
              SizedBox(
                width: 4,
              ),
              Text(
                'Southwest Airlines',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              SizedBox(
                width: 75,
              ),
              Text(
                'Executive',
                style: TextStyle(fontSize: 12, color: AppColors.grey),
              ),
            ],
          ),
    SizedBox(height: 15,),
          Row(
  children: [
    Column(
      children: [
        Text('GTH',
        style: TextStyle(
          fontSize: 24,
        ),),
        SizedBox(height: 5,),
        Text('14.00',
          style: TextStyle(
            fontSize: 12,
            color: AppColors.grey
          ),),
      ],
    ),
    SizedBox(width: 75,),
    ImageIcon(
      AssetImage("assets/images/plane.png"),
      color: Colors.blue,
      size: 22,
    ),
    SizedBox(width: 75,),
    Column(
      children: [
        Text('KHQ',
          style: TextStyle(
            fontSize: 24,
          ),),
        SizedBox(height: 5,),
        Text('07.15',
          style: TextStyle(
              fontSize: 12,
              color: AppColors.grey
          ),),
      ],
    ),
  ],
),
          SizedBox(height: 16,),
          Row(
            children: [
              Image.asset('assets/images/Vector (1).png'),
              SizedBox(width: 8,),
              Text('2 Person ',
              style: TextStyle(
                fontSize: 12
              ),),
              SizedBox(width: 8,),
              Image.asset('assets/images/incard.png'),
              SizedBox(width: 8,),
              Text('Premium ',
                style: TextStyle(
                    fontSize: 12
                ),),
              SizedBox(width: 60,),
              Text('IDR 350.000 ',
                style: TextStyle(
                    fontSize: 12
                ),),
              Text('/Pax ',
                style: TextStyle(
                    fontSize: 12,
                  color: AppColors.grey
                ),),
            ],
          ),
          SizedBox(height: 18,),
          Row(
            children: [
              Image.asset('assets/images/Ellipse 21.png', color: Colors.black,),
              SizedBox(
                width: 4,
              ),
              Text(
                'Matt Murdock',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              SizedBox(
                width: 75,
              ),
              Text(
                'Edit',
                style: TextStyle(fontSize: 12,
                    color: AppColors.blue),
              ),
            ],
          ),
          SizedBox(height: 16,),
        ],
      ),
    );
  }
}
