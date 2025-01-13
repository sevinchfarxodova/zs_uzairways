import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zs_airways/features/home_page/widgets/verify_email_sheet.dart';

import '../../core/constants/colors.dart';
import '../../core/route/route_names.dart';
import '../auth/widgets/arrow.dart';
import '../payment_details/transactions/widgets/button.dart';

class SettingConfirmPin extends StatelessWidget {
  const SettingConfirmPin({super.key});

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
                height: 22,
              ),
              Text(
                'Confirm '
                '\nyour PIN',
                style: TextStyle(
                    color: AppColors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 14,
              ),
              Text(
                'Enter 6 digits number for your PIN. Make sure the combination is not easy to guess.',
                style: TextStyle(
                  color: AppColors.grey,
                  fontSize: 14,
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  passcodes('4'),
                  SizedBox(
                    width: 6,
                  ),
                  passcodes('6'),
                  SizedBox(
                    width: 6,
                  ),
                  passcodes('1'),
                  SizedBox(
                    width: 6,
                  ),
                  passcodes('-'),
                  SizedBox(
                    width: 6,
                  ),
                  passcodes('-'),
                  SizedBox(
                    width: 6,
                  ),
                  passcodes('-'),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return VerifyEmailSheet();
                      });
                  Button(
                    text: 'Enter',
                    onPressed: () {
                      Navigator.pushNamed(
                          context, RouteNames.settingConfirmPin);
                    },
                  );
                },
              ),
            ]),
      ),
    );
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
          Text(
            numb,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
