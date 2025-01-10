import 'package:flutter/material.dart';

 zaynabxon
import 'core/route/route_generator.dart';
import 'core/route/route_names.dart';

class MyApp extends StatelessWidget {
   MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     initialRoute: RouteNames.introPage1,
     onGenerateRoute: AppRoute(context: context).onGenerateRoute,
   );
  }
}
import 'main.dart';
import 'myApp.dart';
 master

void main() {
  runApp( MyApp());
}