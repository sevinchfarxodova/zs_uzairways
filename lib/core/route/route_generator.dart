import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zs_airways/core/route/route_names.dart';
import 'package:zs_airways/features/account_page/setting_confirm_pin.dart';
import 'package:zs_airways/features/account_page/setting_pin.dart';
import 'package:zs_airways/features/home_page/contact_details.dart';
import 'package:zs_airways/features/home_page/passenger_info.dart';
import 'package:zs_airways/features/home_page/search_card_flights.dart';
import 'package:zs_airways/features/home_page/select_seat.dart';

import 'package:zs_airways/features/intro_page/page1.dart';
import 'package:zs_airways/features/intro_page/page3.dart';
import 'package:zs_airways/features/payment_details/payment_details_page.dart';

import '../../features/account_page/account.dart';
import '../../features/auth/sign in/sign_in.dart';
import '../../features/home_page/booking_detail.dart';
import '../../features/intro_page/page2.dart';
import 'package:zs_airways/features/auth/sign%20up/sign_up.dart';
import '../../features/auth/sign in/sign_in.dart';
import '../../features/payment_details/transactions/passcode.dart';
import '../../features/payment_details/transactions/payment_successful.dart';
import '../../features/payment_details/transactions/transaction_details.dart';

class AppRoute{
  BuildContext context;
  AppRoute({required this.context});

  Route onGenerateRoute(RouteSettings routeSettings){
    switch (routeSettings.name){
      case RouteNames.signIn:
        return MaterialPageRoute(builder: (_)=>  SignIn());
      case RouteNames.introPage1:
        return MaterialPageRoute(builder: (_)=>  Page1());
      case RouteNames.introPage2:
        return MaterialPageRoute(builder: (_)=>  Page2());
      case RouteNames.introPage3:
    return MaterialPageRoute(builder: (_)=>  Page3());
      case RouteNames.paymentDetails:
        return MaterialPageRoute(builder: (_)=>  PaymentDetailsPage());
      case RouteNames.signUp:
        return MaterialPageRoute(builder: (_)=>  SignUp());
      case RouteNames.passcode:
        return MaterialPageRoute(builder: (_)=>  Passcode());
      case RouteNames.paySuccessful:
        return MaterialPageRoute(builder: (_)=>  PaymentSuccessful());
      case RouteNames.tranDetails:
        return MaterialPageRoute(builder: (_)=>  TransactionDetails());
      case RouteNames.searchCardFlights:
        return MaterialPageRoute(builder: (_)=>  SearchCardFlights());
      case RouteNames.bookingDetail:
        return MaterialPageRoute(builder: (_)=>  BookingDetail());
      case RouteNames.contactDetail:
        return MaterialPageRoute(builder: (_)=>  ContactDetails());
      case RouteNames.passengerInfo:
        return MaterialPageRoute(builder: (_)=>  PassengerInfo());
      case RouteNames.selectSeats:
        return MaterialPageRoute(builder: (_)=>  SelectSeat());
      case RouteNames.account:
        return MaterialPageRoute(builder: (_)=>  Account());
      case RouteNames.settingPin:
        return MaterialPageRoute(builder: (_)=>  SettingPin());
      case RouteNames.settingConfirmPin:
        return MaterialPageRoute(builder: (_)=>  SettingConfirmPin());


      default:
        return _errorRoute();
    }
  }

  Route<dynamic> _errorRoute(){
    return MaterialPageRoute(builder: (_)=>Scaffold(
      appBar: AppBar(
        title: Text('Error'),
      ),
      body: Center(
          child: Text('Page not found')),
    ),
    );
  }
}