import 'package:flutter/material.dart';
import 'package:zs_airways/core/constants/colors.dart';

class AccContainers extends StatelessWidget {
  String? imgUrl;
  String? text;
VoidCallback? onPressed;
   AccContainers({super.key, required this.imgUrl,
     required this.text,
     required this.onPressed,
   });

  @override
  Widget build(BuildContext context) {
      return Container(
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(children: [
              Image.asset(imgUrl!,
                color: AppColors.blue,
              ),
              SizedBox(width: 8,),
              Text(text!,
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.black,
                ),
              ),
            ],),
            GestureDetector(
              onTap:
                onPressed,
              child: Row(
                children: [
                  Image.asset('assets/images/arrow_forward_ios.png',
                    color: AppColors.grey,)
                ],
              ),
            )

          ],
        ),
      );
  }
}
