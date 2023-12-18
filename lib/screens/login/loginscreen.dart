import 'package:flutter/material.dart';
import 'package:project_software/screens/home/homescreen.dart';
import 'package:project_software/screens/subscription/subscription.dart';
class Login_Screen extends StatelessWidget {
  @override
  static const String nameroute = "Login";
  var formkey=GlobalKey<FormState>();
  Widget build(BuildContext context) {

    return Scaffold(
        appBar:AppBar(
          backgroundColor: Colors.green,
          elevation: 0.0,
          titleSpacing: 20.0,
          title:
          Center(
            child: Text('ProFit',
              style: TextStyle(
                fontWeight: FontWeight.w100,
                fontSize: 35.0,
                color: Colors.white,
              ),


            ),
          ),


        ),


        body: Form(
          key: formkey,
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration( gradient: LinearGradient(
                begin: Alignment.center,
                end: Alignment.bottomCenter,
                colors:[Colors.white60,Colors.black45]

            ),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(40),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Login ',
                          style: TextStyle(
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black.withOpacity(0.7)
                          ),
                        ),
                        SizedBox(
                          height: 25.0,
                        ),
                        TextFormField(
                          onFieldSubmitted: (value){
                            print(value);
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty)
                              return "Please enter your email";
                            else{
                              final bool emailValid =
                              RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@")
                                  .hasMatch(value);
                              if(!emailValid)
                                return "Please enter valid email";
                              else
                                return null;
                            }
                          },
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              labelText: 'email address or phone number',
                              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                              prefixIcon: Icon(
                                Icons.email,
                                color: Colors.grey,
                              )
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        TextFormField(
                            controller: TextEditingController(),
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: true,
                            validator: (value) {
                              if (value == null || value.isEmpty)
                                return "Please enter your Password";
                              else
                                {
                                  RegExp passvalid =
                                  RegExp(r'.{8,}$');
                                  if(!passvalid.hasMatch(value))
                                    return "Please enter valid Password";
                                  else
                                    return null;

                                }
                            },
                            decoration: InputDecoration(
                              labelText: 'password',
                              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                              prefixIcon: Icon(
                                Icons.lock,color: Colors.grey,
                              ),
                              suffixIcon:Icon(
                                Icons.remove_red_eye,
                              ),
                            )
                        )
                        ,
                        SizedBox(
                          height: 20.0,
                        ),
                        Container(
                            decoration:   BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            width: double.infinity,
                            child: MaterialButton(
                              onPressed: (){
                                if(formkey.currentState!.validate())
                                Navigator.pushReplacementNamed(context,Subscription.nameroute);
                              },
                              child: Text(
                                'log in',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            )
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(''
                                'don\'t have an account?',
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.6)
                              ),

                            ),
                            TextButton(onPressed:(){},
                                child: Text(
                                  'Sign Up ',
                                  style: TextStyle(
                                      color: Colors.black
                                  ),
                                )),

                          ],
                        )],
                    ),
                ),

              ),
            ),
          ),
        )
    );
  }
}