import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:upitch/home.dart';
import 'package:upitch/login_register/switcher.dart';
import 'package:upitch/shared_resources/authenticate.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "UPitch",
      home: ChangeRoute(),
    ),
  );
}

class ChangeRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<CurrentUser>.value(
      value: Authenticate().user,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}


class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<CurrentUser>(context);
    if(user == null){
      return SwitchScreens();
    }
    else{
      return HomePage();
    }
  }
}

