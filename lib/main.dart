import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutterprojects/login.dart';
import 'package:flutterprojects/login_with_validation.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splash(),
  ));
}
 class Splash extends StatefulWidget{
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    Timer(Duration(seconds:5),() {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context)=> Login_with_Validation()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        decoration:(const BoxDecoration(
          image:DecorationImage(
             fit: BoxFit.fill,
            image: NetworkImage(
              "https://cdn-icons-png.flaticon.com/512/2920/2920369.png"
            )),
        )),
        child: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Image.asset("assets/images/image1.png",height:10,width:10),
            //const Image(image: AssetImage("assets/images/imageuser.png",height: 200,width: 200),

          ],
        ),
        ),
      ),
    );
  }
}