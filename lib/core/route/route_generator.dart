import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zs_airways/core/route/route_names.dart';
import 'package:zs_airways/features/intro_page/page1.dart';
import 'package:zs_airways/features/intro_page/page3.dart';

import '../../features/auth/sign in/sign_in.dart';
import '../../features/intro_page/page2.dart';

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