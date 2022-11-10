import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterprojects/login_with_validation.dart';

void main(){
  runApp(MaterialApp(home: LoginAssign()));
}

class LoginAssign extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: SingleChildScrollView(

          child: Column(
            children: [

              const Padding(
                padding: EdgeInsets.only(top: 200),
                child: Text(
                  "Login", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                ),
              ),

              const Padding(
                padding: EdgeInsets.only(top: 30),
                child: Text(
                  "Welcome back! Login with your credentials", style: TextStyle(fontSize: 15),
                ),
              ),

              const Padding(
                padding: EdgeInsets.all(5),
                child: Text(
                  "Email", style: TextStyle(fontSize: 15),
                ),
              ),

              const Padding(
                padding: EdgeInsets.all(15.0),
                child: TextField(
                  decoration: InputDecoration(
                      label: Text("abc@gmail.com"),
                      border: OutlineInputBorder(
                        //borderRadius: BorderRadius.all(Radius.circular(20)),
                      )
                  ),
                ),
              ),


              const Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  obscuringCharacter: "*",
                  obscureText: true,
                  decoration: InputDecoration(
                      label: Text("*****"),
                      border: OutlineInputBorder(
                        //borderRadius: BorderRadius.all(Radius.circular(20)),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50, bottom: 20),
                child: ElevatedButton(onPressed: () {},
                  child: Text("Login"),),

              ),
              TextButton(
                  onPressed: () {},
                  child: const Text("Don't have an Account?Signup"))
            ],
          ),

        ));
  }
}
