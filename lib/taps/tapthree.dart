
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../styles/theme.dart';

class TapThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical:8,horizontal:16),
          child: Row(
            children: [
              Image.asset("assets/images/logo.png"),
              Text("ProFit",style: AppTheme.titlestyle),
            ],
          ),
        ),

      Center(
          child: Text("Personal Information",style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.black
          ),)),
        Information("Name","Marco Ayman"),
        Information("Age","20"),
        Information("Gender" ,"Male"),
        Information("Date of birth", "17/1/2003"),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 40),
          child: Divider(thickness: 2,color: Colors.black12,),
        ),
        Center(
            child: Text("Health Information",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black
            ),)),
        Information("Height","188.0"),
        Information("Actual Weight","90"),
        Information("Goal","get fitter and more active"),
        Information("Expected Weight to reach","80"),
      ],
    );
  }
  Widget Information(String text1,String text2){
    return  Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Text(text1,style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18,
              color: Colors.black
          ),),
          Spacer(),
          Text(text2,style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18,
              color: Color(0XFF00AA95)//Colors.black45
          ),),
          Icon(Icons.edit ,color: Colors.black45,)
        ],
      ),
    );
  }
}