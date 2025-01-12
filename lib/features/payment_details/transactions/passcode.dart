import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zs_airways/core/route/route_names.dart';

import '../../../core/constants/colors.dart';
import '../../auth/widgets/arrow.dart';
import 'widgets/button.dart';

class Passcode extends StatelessWidget {
  const Passcode({super.key});

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
                'Passcode',
                style: TextStyle(
                    color: AppColors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 14,
              ),
              Text(
                'Enter Your Passcode to Proceed the Payment',
                style: TextStyle(
                  color: AppColors.grey,
                  fontSize: 14,),
              ),
              SizedBox(
                height: 14,
              ),
              TextButton(onPressed: () {}, child:
              Text('Forgot passcode?', style: TextStyle(
                  color: AppColors.blue,
                  fontSize: 14
              ),
              )),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                    passcodes('4'),
                    SizedBox(width: 6,),
                    passcodes('6'),
                  SizedBox(width: 6,),
                  passcodes('1'),
                  SizedBox(width: 6,),
                  passcodes('-'),
                  SizedBox(width: 6,),
                  passcodes('-'),
                  SizedBox(width: 6,),
                  passcodes('-'),
                ],
              ),
              SizedBox(height: 16,),
              Button(text: 'Enter', onPressed: (){
Navigator.pushNamed(context, RouteNames.paySuccessful);
              },)
            ]),
      ),);
  }
}

Widget passcodes(String numb) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: Color(0xFFF2F3F6),
      minimumSize: Size(55, 35),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
    ),
    onPressed: () {},
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(numb,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500
        ),)
      ],
    ),
  );
}
