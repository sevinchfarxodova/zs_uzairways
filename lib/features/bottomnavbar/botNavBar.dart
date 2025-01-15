
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zs_airways/features/payment_details/payment_details_page.dart';

import '../../core/constants/colors.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;
  List<Widget> pages = [
  PaymentDetailsPage(),
    PaymentDetailsPage(),
    PaymentDetailsPage(),


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: pages[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.blue,
        currentIndex: _currentIndex,
        selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: [
          bottomNavigationBarWidget(
            "assets/images/home.png",
            "Home",
          ),
          bottomNavigationBarWidget(
            "assets/confirmation_number.png",   "Transactions",
          ),
          bottomNavigationBarWidget(
            "assets/images/person.png",   "Bookmark",
          ),
        ],
      ),
    );
  }
}

BottomNavigationBarItem bottomNavigationBarWidget(String imageURL, String label) {
  return BottomNavigationBarItem(
    backgroundColor: AppColors.white,
    label: label,
    icon: ImageIcon(
      AssetImage(imageURL),
      size: 45,
    ),
  );
}