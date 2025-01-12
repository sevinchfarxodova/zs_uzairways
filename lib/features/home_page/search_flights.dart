import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zs_airways/core/constants/colors.dart';
import 'package:zs_airways/features/home_page/widgets/search_card.dart';

import '../auth/widgets/arrow.dart';
import '../payment_details/transactions/widgets/card.dart';

class SearchFlights extends StatelessWidget {
  const SearchFlights({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(14),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                  children: [
                    Arrow(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      imgUrl: "assets/images/arrow_forward_ios.png",
                    ),
                    SizedBox(width: 92,),
                    Center(
                      child: Text('Search Flights',
                        style: TextStyle(
                            color: AppColors.white,
                            fontSize: 16
                        ),),
                    ),
                  ]
              ),
              SizedBox(height: 30,),
              SearchCard(),
              SizedBox(height: 24,),
              SearchCard(),
              SizedBox(height: 24,),
              SearchCard(),
            ],
          ),
        ),
      ),
    );
  }
}
