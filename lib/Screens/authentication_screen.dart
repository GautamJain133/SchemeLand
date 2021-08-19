import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wepportfolio/Screens/Drawer.dart';

import '../Wigets/authForm.dart';
import 'homepage.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final _auth = FirebaseAuth.instance;

  final _codeController = TextEditingController();

  var currentuser;

  bool showloading = false;

  Future<void> signInWithPhoneAuthCredential(
      PhoneAuthCredential phoneAuthCredential, BuildContext ctx) async {
    try {
      setState(() {
        showloading = true;
      });
      UserCredential Authcredential =
          await _auth.signInWithCredential(phoneAuthCredential);
      print(Authcredential);
      if (Authcredential.user != null) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (ctx) => Drrawer(),
          ),
        );
      } else {
        print('user is null');
      }
    } on FirebaseAuthException catch (e) {
      var message =
          "An error occurred , please check your credentials or try after Sometime ";

      setState(() {
        showloading = false;
      });

      // showing error stuff
      if (e.message != null) {
        message = e.message;
      }
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
          backgroundColor: Theme.of(context).errorColor,
        ),
      );

      setState(() {
        showloading = false;
      });
    } catch (e) {
      setState(() {
        showloading = false;
      });
      print(e);
    }
  }

  // getting the user id
  Future<String> getCurrentUserid() async {
    return await _auth.currentUser.uid;
  }

  // getting the current user
  Future getCurrentuser() async {
    return await _auth.currentUser;
  }

  Future<void> _submitAuthForm(String phoneno, BuildContext ctx) {
    setState(() {
      showloading = true;
    });

    _auth.verifyPhoneNumber(
        timeout: Duration(seconds: 60),
        phoneNumber: "+91" + phoneno,
        verificationCompleted: (phoneAuthCredential) {
          setState(() {
            showloading = false;
          });

          signInWithPhoneAuthCredential(phoneAuthCredential, ctx);
        },
        verificationFailed: (PhoneVerificationFailed) async {
          setState(() {
            showloading = false;
          });

          print("error");
        },
        codeSent: (verificationId, resensendinTokrn) async {
          setState(() {
            showloading = false;
          });

          showDialog(
              context: ctx,
              barrierDismissible: false,
              builder: (context) => AlertDialog(
                    title: Text("Enter SMS Code"),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        TextField(
                          controller: _codeController,
                          decoration: InputDecoration(hintText: 'Enter Otp'),
                        ),
                      ],
                    ),
                    actions: <Widget>[
                      TextButton(
                        child: Text("Done"),
                        onPressed: () async {
                          PhoneAuthCredential phoneAuthCredential =
                              await PhoneAuthProvider.credential(
                                  verificationId: verificationId,
                                  smsCode: _codeController.text);

                          signInWithPhoneAuthCredential(
                              phoneAuthCredential, ctx);
                        },
                      )
                    ],
                  ));
        },
        codeAutoRetrievalTimeout: (verificationId) async {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.07,
          ),
          Container(
            margin: EdgeInsets.only(right: 30.0),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.5,
            child: Image.asset(
              "assets/images/logo.jpeg",
              // fit: BoxFit.cover,
            ),
          ),
          AuthForm(_submitAuthForm, showloading)
        ],
      ),
    );
  }
}
