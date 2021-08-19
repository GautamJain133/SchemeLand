import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_wepportfolio/Screens/SuggestionScreen.dart';
import 'package:flutter_wepportfolio/Screens/homepage.dart';
import 'package:flutter_wepportfolio/classproviders/profileData.dart';
import 'package:provider/provider.dart';

//import 'ContactUs_Screen.dart';
import 'edit_Profile_Screen.dart';

class Drrawer extends StatefulWidget {
  static const routeName = './drawer';
  bool _isloading = true;
  @override
  _DrrawerState createState() => _DrrawerState();
}

class _DrrawerState extends State<Drrawer> {
  double value = 0;


  void didChangeDependencies() {



     final fetch = Provider.of<profile>(context,listen: false);

     fetch.fetchandsetproduct();




    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final fetch = Provider.of<profile>(context);


    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Colors.deepPurpleAccent,
                Colors.deepPurple,
                Colors.white,
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            )),
          ),
          SafeArea(
            child: Container(
              width: 200.0,
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  DrawerHeader(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 50.0,
                        child: fetch.isloading?CircularProgressIndicator(color: Colors.black,):Image.network(
                          fetch.link,
                          fit: BoxFit.cover,
                          width: double.maxFinite,
                          height: double.maxFinite,

                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Gautam jain",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                    ],
                  )),
                  Expanded(
                      child: ListView(children: [
                    ListTile(
                      onTap: () {
                        Navigator.pushReplacement<void, void>(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) => Drrawer(),
                          ),
                        );
                        ;
                      },
                      leading: Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Home",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.of(context).pushNamed(ProfilePage.routeName);
                      },
                      leading: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Profile",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.of(context).pushNamed(Suggestion.routeName);
                      },
                      leading: Icon(
                        Icons.comment,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Suggestion",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        // Navigator.of(context).pushNamed(Contactus.routeName);
                      },
                      leading: Icon(
                        Icons.contact_support,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Contact us",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.3,
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Icon(
                        Icons.logout,
                        color: Colors.white,
                        size: 30,
                      ),
                      title: Text(
                        "Logout",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ]))
                ],
              ),
            ),
          ),
          TweenAnimationBuilder(
              curve: Curves.easeIn,
              tween: Tween<double>(begin: 0, end: value),
              duration: Duration(milliseconds: 300),
              builder: (_, double val, __) {
                return (Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, 0.001)
                    ..setEntry(0, 3, 200 * val)
                    ..rotateY((pi / 6) * val),
                  child: MyHomePage(),
                ));
              }),
          GestureDetector(
            onHorizontalDragUpdate: (e) {
              // setState(() {
              //   value==0?value=1:value=0;
              //
              // });

              if (e.delta.dx > 0) {
                setState(() {
                  value = 1;
                });
              } else {
                value = 0;
              }
            },
          )
        ],
      ),
    );
  }
}
