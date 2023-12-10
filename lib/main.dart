import 'package:flutter/material.dart';
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
          initialRoute: Home_Screen.nameroute,
          routes: {Home_Screen.nameroute: (context) => Home_Screen(),
          },
        theme: AppTheme.lightTheme,
      );
  }

}
