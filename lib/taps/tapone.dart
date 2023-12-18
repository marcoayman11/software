
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import '../styles/theme.dart';
class TapOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //SizedBox(height: 10,),
       Padding(
         padding: const EdgeInsets.symmetric(
             vertical: 8,horizontal:16
         ),
         child: Row(
           children: [
             Image.asset("assets/images/logo.png"),
             Text("ProFit",style: AppTheme.titlestyle),
             Spacer(),
             Stack(
               alignment: Alignment.topRight,
               children: [
                 Icon(Icons.notifications_none,size: 40,),
                 badges.Badge(
                   position: badges.BadgePosition.topEnd(),
                   badgeContent: Text('.',style:TextStyle(
                     fontWeight: FontWeight.bold,
                     color: Colors.red
                   )),
                 ),
               ],
             ),
           ],
         ),
       ),
        Padding(
          padding: const EdgeInsets.symmetric(
              vertical: 8,horizontal:16
          ),
          child: const Text("Hello,",style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 20,
          ),),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
              vertical: 8,horizontal:16
          ),
          child: Text("How are you feeling today ?",style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16,)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 8,horizontal:16
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("assets/images/love.png"),
              Image.asset("assets/images/cool.png"),
              Image.asset("assets/images/happy.png"),
              Image.asset("assets/images/sad.png"),
            ],
          ),
        ),
        Padding(
            padding:const EdgeInsets.symmetric(
          vertical: 4,horizontal:30
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Love",style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 17,)),
              Text("Cool",style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 17,)),
              Text("Happy",style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 17,)),
              Text("Sad",style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 17,)),
            ],
          ),
        ),
        Padding(
          padding:  const EdgeInsets.symmetric(
              vertical: 8,horizontal:16
          ),
          child: Row(
            children: [
              Text("Feature",style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18
              ),),
              Spacer(),
              Text("See more",style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                color: Colors.green
              ),),
              Icon(Icons.chevron_right)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Card(
              shape: OutlineInputBorder(
               borderRadius: BorderRadius.circular(24),
                borderSide: BorderSide(color: Colors.transparent)
              ),
              margin: EdgeInsets.all(16),
              color: Color(0XFFEAECF5),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text("Positive vibes",style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16
                        ),),
                          SizedBox(height: 3,),
                          Text("Boost your mood with",style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16
                          ),),
                          Text("positive vibes",style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16
                          ),),
                          SizedBox(height: 3,),
                          Row(
                            children: [
                              Icon(Icons.play_circle,color: Colors.green,),
                              Text("10 mins",style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14
                              ),),
                            ],
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    Image.asset("assets/images/Walking the Dog.png")
                  ],
                ),
              ),
            ),

        ),
        Padding(
          padding:  const EdgeInsets.symmetric(
              vertical: 8,horizontal:16
          ),
          child: Row(
            children: [
              Text("Exercise",style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18
              ),),
              Spacer(),
              Text("See more",style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Colors.green
              ),),
              Icon(Icons.chevron_right)
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Exercise(0XFFF9F5FF,"assets/images/Relaxation.png" ,"Relaxation"),
            Exercise(0XFFFDF2FA,"assets/images/Meditation.png" ,"Meditation"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Exercise(0XFFFFFAF5,"assets/images/Beathing.png" ,"Beathing"),
            Exercise(0XFFF0F9FF,"assets/images/Yoga.png" ,"Yoga"),
          ],
        ),

      ],
    );
  }
  Widget Exercise(int color,String nameimage,String text){
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
          width: 150,
          height: 75,
          decoration: BoxDecoration(
            color: Color(color),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Row(
              children: [
                Image.asset(nameimage),
                SizedBox(width: 5,),
                Text(text,style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14
                ),)
              ],
            ),
          ),
        ),
    );

  }
}
