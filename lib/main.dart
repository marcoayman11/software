import 'package:flutter/material.dart';
import 'package:project_software/screens/login/loginscreen.dart';
import 'package:project_software/screens/subscription/subscription.dart';
import 'package:provider/provider.dart';
import 'provider/myprovider.dart';
import 'screens/home/homescreen.dart';
import 'styles/theme.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create:(context) => MyProvider() ,
      child: MyApplication()));
}
class MyApplication extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return
      MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: Login_Screen.nameroute,
          routes: {
            Login_Screen.nameroute:(context) => Login_Screen(),
            Home_Screen.nameroute : (context) => Home_Screen(),
          Subscription.nameroute  :(context) => Subscription(),
          },
        theme: AppTheme.lightTheme,
      );
  }

}
