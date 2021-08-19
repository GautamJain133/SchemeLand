import 'package:flutter/material.dart';
import 'package:flutter_wepportfolio/Screens/Drawer.dart';
import '../Screens/authentication_screen.dart';
import '../Screens/homepage.dart';
import 'package:firebase_auth/firebase_auth.dart';

class InitilizerWidget extends StatefulWidget {
  @override
  _InitilizerWidgetState createState() => _InitilizerWidgetState();
}

class _InitilizerWidgetState extends State<InitilizerWidget> {
  // FirebaseAuth _Auth;
  FirebaseAuth _Auth;
  User _user;
  bool isloading = true;

  @override
  void initState() {
    super.initState();
    _Auth = FirebaseAuth.instance;

    _user = _Auth.currentUser;
    isloading = false;
  }

  @override
  Widget build(BuildContext context) {
    return isloading
        ? Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          )
        : _user == null
            ? AuthScreen()
            : Drrawer();
  }
}
