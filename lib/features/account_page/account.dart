import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zs_airways/core/constants/colors.dart';
import 'package:zs_airways/features/account_page/widgets/acc_containers.dart';
import 'package:zs_airways/features/account_page/widgets/profile_circle.dart';

import '../../core/route/route_names.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Expanded(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    ProfileCircle(),
                    SizedBox(height: 12,),
                    AccContainers(imgUrl: 'assets/images/tg.png', text: 'My Order', onPressed: () {
                      Navigator.pushNamed(context, RouteNames.selectSeats);
                    },),
                    SizedBox(height: 12,),
                    AccContainers(imgUrl: 'assets/images/tg.png', text: 'My Voucher', onPressed: () {
                      Navigator.pushNamed(context, RouteNames.selectSeats);
                    },),
                    SizedBox(height: 12,),
                    AccContainers(imgUrl: 'assets/images/tg.png', text: 'Payment Methods', onPressed: () {
                      Navigator.pushNamed(context, RouteNames.selectSeats);
                    },),
                    SizedBox(height: 12,),
                    AccContainers(imgUrl: 'assets/images/tg.png', text: 'Invite Friends', onPressed: () {
                      Navigator.pushNamed(context, RouteNames.selectSeats);
                    },),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
