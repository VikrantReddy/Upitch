import 'package:flutter/material.dart';
import 'package:upitch/login_register/register.dart';
import 'login.dart';

class SwitchScreens extends StatefulWidget {
  @override
  _SwitchScreensState createState() => _SwitchScreensState();
}

class _SwitchScreensState extends State<SwitchScreens> {
  bool signIn = true;
  void changeScreen(){
    setState(() {
      signIn = !signIn;
    });
  }
  @override
  Widget build(BuildContext context) {
    if(signIn){
      return LoginPage(changeScreen: changeScreen);
    }else{
      return RegisterPage(changeScreen: changeScreen);
    }
  }
}
