import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zs_airways/core/route/route_names.dart';

import '../../../core/constants/colors.dart';

class PaymentSuccessful extends StatelessWidget {
  const PaymentSuccessful({super.key});

  @override
  Widget build(BuildContext context) {
      return SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.blue,
          body: Column(
            children: [SizedBox(height: 150,),
              Center(child: Image.asset('assets/images/done.png')),
              SizedBox(height: 30,),
              Center(
                child: Text('Order confirmed',
                style: TextStyle(color: Colors.white,
                fontSize: 24),),
              ),
              Center(
                child: Text('Thank you for your order. You will receive \n             email confirmation shortly.',
                  style: TextStyle(color: Colors.white,
                      fontSize: 16),),
              ),
SizedBox(height: 24,),
              buttonWhite('See Details', (){
                Navigator.pushNamed(context, RouteNames.tranDetails);
              })
        
            ],
        
          ),
        ),
      );
  }
}

Widget buttonWhite(String text, VoidCallback onPressed) {
  return ElevatedButton(
    onPressed: onPressed,
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.white,
      padding: const EdgeInsets.symmetric(horizontal: 326, vertical: 36),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
      ),
    ),
    child:  Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          text,
          style: TextStyle(
            color: AppColors.black, // Text color
            fontSize: 16, // Font size
          ),
        ),
        const SizedBox(width: 8),
      ],
    ),
  );

}
