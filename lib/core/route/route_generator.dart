import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zs_airways/core/route/route_names.dart';

import '../../features/auth/sign in/sign_in.dart';

class AppRoute{
  BuildContext context;

  AppRoute({required this.context});

  Route onGenerateRoute(RouteSettings routeSettings){
    switch (routeSettings.name){
      case RouteNames.signIn:
        return MaterialPageRoute(builder: (_)=>  SignIn());

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