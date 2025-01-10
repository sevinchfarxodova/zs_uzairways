import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zs_airways/core/route/route_names.dart';
import 'package:zs_airways/features/auth/sign%20up/sign_up.dart';
import 'package:zs_airways/features/transactions/payment_successful.dart';
import 'package:zs_airways/features/transactions/transaction_details.dart';

import '../../features/auth/sign in/sign_in.dart';
import '../../features/transactions/passcode.dart';

class AppRoute{
  BuildContext context;

  AppRoute({required this.context});

  Route onGenerateRoute(RouteSettings routeSettings){
    switch (routeSettings.name){
      case RouteNames.signIn:
        return MaterialPageRoute(builder: (_)=>  SignIn());
      case RouteNames.signUp:
        return MaterialPageRoute(builder: (_)=>  SignUp());
      case RouteNames.passcode:
        return MaterialPageRoute(builder: (_)=>  Passcode());
      case RouteNames.paySuccessful:
        return MaterialPageRoute(builder: (_)=>  PaymentSuccessful());
      case RouteNames.tranDetails:
        return MaterialPageRoute(builder: (_)=>  TransactionDetails());

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