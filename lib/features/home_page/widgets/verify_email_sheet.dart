import 'package:flutter/cupertino.dart';
import 'package:zs_airways/core/constants/colors.dart';

class VerifyEmailSheet extends StatelessWidget {
  const VerifyEmailSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 450,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            children: [
              Text('Verify Your Email',style: TextStyle(
                fontSize: 24,
                color: AppColors.black,
                fontWeight: FontWeight.w500
              ),
              ),
              SizedBox(height: 28,),
              Text('Input the OTP code sent to:',
                style: TextStyle(
                    fontSize: 16,
                    color: AppColors.grey,
                    fontWeight: FontWeight.w500
                ),),
              SizedBox(height: 10,),
              Text('j*******ia@gmail.com',
                style: TextStyle(
                    fontSize: 16,
                    color: AppColors.black,
                    fontWeight: FontWeight.w500
                ),),
              SizedBox(height: 18,),
              Image.asset('assets/images/')
            ],
          ),
        ),
      ),
    );
  }
}
