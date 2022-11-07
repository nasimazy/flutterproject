import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:(Login)));

class LoginAssign extends StatelessWidget


    return Scaffold(
        appBar: AppBar(
          title: const Text("signup"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text("create an Account,its free",style: TextStyle(fontSize: 30),
                ),
              ),


              const Padding(
                padding: EdgeInsets.all(15.0),
                child:TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.account_circle),
                      label: Text("username"),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      )
                  ),
                ),
              ),


              const Padding(
                padding: const EdgeInsets.all(15.0),
                child:TextField(
                  obscuringCharacter: "*",
                  obscureText: true,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      label: Text("Password"),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20,bottom: 20),
                child: ElevatedButton(onPressed: () {}, child: Text("Login")),
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text("Not a user? Register here"))
            ],
          ),

        ));
  }
