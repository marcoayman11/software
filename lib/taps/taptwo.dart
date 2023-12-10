import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_software/exercisetap/alltype.dart';
import 'package:project_software/exercisetap/fullbody.dart';
import 'package:project_software/exercisetap/lower.dart';
import 'package:project_software/exercisetap/upper.dart';
import 'package:provider/provider.dart';
import '../provider/myprovider.dart';
import '../styles/theme.dart';
class TapTwo extends StatelessWidget {
  int index=0;
  List<Widget> exercise_list = [
    All_Type(),
    Full_Body(),
    Upper(),
    Lower()
  ];
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Image.asset("assets/images/logo.png"),
              Text("ProFitness",style: AppTheme.titlestyle),
            ],
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical:8,horizontal:16 ),
            child: Text("Ready to workout?",style: TextStyle(
                fontSize:20 ,
                fontWeight: FontWeight.w600
            ),),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical:8,horizontal:4),
          child: Image.asset("assets/images/Frame1.png"),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical:8,horizontal:16 ),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text("Workout Programs",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20),),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: DefaultTabController(
            initialIndex: index,
            length:exercise_list.length,
            child:TabBar(
              isScrollable: true,
                onTap: (value){
                index=value;
                provider.bottomNavigationBar();
                },
                tabs: [
                  Tab(
                    child: Text("All Type",style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color(0XFF363F72),
                        fontSize: 16),),
                  ),
                  Tab(
                    child: Text("Full Body",style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color(0XFF363F72),
                        fontSize: 16),),
                  ),
                  Tab(
                    child: Text("Upper",style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color(0XFF363F72),
                        fontSize: 16),),
                  ),
                  Tab(
                    child: Text("Lower",style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color(0XFF363F72),
                        fontSize: 16),),
                  ),
                ]),
          ),
        ),
        Expanded(
          child: Scaffold(
            body: exercise_list[index],
          ),
        )

      ],

    );
  }
}