
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_software/Model/modelcard.dart';
import 'package:provider/provider.dart';

import '../../provider/myprovider.dart';

class Card_Exercise extends StatelessWidget {
ModelCard modelCard;
Card_Exercise(this.modelCard);
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return
      Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            decoration: BoxDecoration(
                color: Color(0XFFEAECF5),
                borderRadius: BorderRadius.circular(12)
            ),
            child:Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          elevation: 5,
                          color: Colors.white,
                          shape: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(color: Colors.transparent)
                          ),
                          child: IconButton(onPressed: () {
                            modelCard.flag=!modelCard.flag;
                            provider.bottomNavigationBar();
                          }, icon:modelCard.flag?Icon(Icons.star_border_outlined)
                          :Icon(Icons.star)
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(modelCard.text1!,style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(modelCard.text2!,style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w400
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.schedule),
                            Text("30 mins",style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400
                            ),)
                          ],
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Expanded(
                    child: Column(
                      children: [
                        Image.asset(modelCard.pathimage!, ),
                      ],
                    ),
                  )
                ] ),
          )
      );
  }
}
