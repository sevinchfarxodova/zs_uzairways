import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zs_airways/core/route/route_names.dart';
 zaynabxon
import 'package:zs_airways/features/intro_page/page1.dart';
import 'package:zs_airways/features/intro_page/page3.dart';
import 'package:zs_airways/features/payment_details/payment_details_page.dart';

import '../../features/auth/sign in/sign_in.dart';
import '../../features/intro_page/page2.dart';
import 'package:zs_airways/features/auth/sign%20up/sign_up.dart';
import 'package:zs_airways/features/transactions/payment_successful.dart';
import 'package:zs_airways/features/transactions/transaction_details.dart';

import '../../features/auth/sign in/sign_in.dart';
import '../../features/transactions/passcode.dart';
 master

class AppRoute{
  BuildContext context;

  AppRoute({required this.context});

  Route onGenerateRoute(RouteSettings routeSettings){
    switch (routeSettings.name){
      case RouteNames.signIn:
        return MaterialPageRoute(builder: (_)=>  SignIn());
 zaynabxon
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
 master

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