import 'package:flutter/material.dart';
import 'package:flutter_wepportfolio/Screens/Agriculture.dart';
import 'package:flutter_wepportfolio/Screens/ContactUs_Screen.dart';
import 'package:flutter_wepportfolio/Screens/Emitra.dart';
import 'package:flutter_wepportfolio/Screens/Enewspapper.dart';
import 'package:flutter_wepportfolio/Screens/SuggestionScreen.dart';
import 'package:flutter_wepportfolio/Screens/carrier.dart';
import 'package:flutter_wepportfolio/Screens/edit_Profile_Screen.dart';
import 'package:flutter_wepportfolio/Screens/elearningscreen.dart';
import 'package:flutter_wepportfolio/Screens/govtschemes.dart';
import 'package:flutter_wepportfolio/Screens/health.dart';
import 'package:flutter_wepportfolio/Screens/homepage.dart';
import 'Screens/scholarshipscreen.dart';
import 'package:flutter_wepportfolio/classproviders/CategoriesList.dart';
import 'Wigets/Initilcheckerwidget.dart';
import 'package:firebase_core/firebase_core.dart';
import 'Screens/Drawer.dart';
import 'package:provider/provider.dart';

import 'classproviders/profileData.dart';
import 'classproviders/scholarshopcategoryList.dart';
void main() async{

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();


  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers:[
        ChangeNotifierProvider(create:(c)=>categorieslist()),
        ChangeNotifierProvider(create:(c)=>profile()),
        ChangeNotifierProvider(create:(c)=>Scholarshipcategorieslist()),


      ],


      child: MaterialApp(
          title: 'Scheme Land',
          theme: ThemeData(
              primarySwatch: Colors.pink,
              backgroundColor: Colors.pink,
                buttonColor:  Colors.blueAccent,
                // textTheme: ButtonTextTheme.primary,
                // shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

             accentColor: Colors.deepPurple,
             accentColorBrightness: Brightness.dark,
             buttonTheme: ButtonTheme.of(context).copyWith(

              )
          ),
          home:InitilizerWidget(),
          routes: {
          ProfilePage.routeName:(ctx)=>ProfilePage(),
         // Contactus.routeName:(c)=>Contactus(),
            MyHomePage.routeName :(ctx)=>MyHomePage(),
            Drrawer.routeName : (c)=>Drrawer(),
            Suggestion.routeName :(_)=>Suggestion(),
            Listtilewidget.routeName:(_)=>Listtilewidget(),
            carriertilewidget.routeName:(_)=>carriertilewidget(),
            Govttilewidget.routeName:(_)=>Govttilewidget(),
            Learningtilewidget.routeName:(_)=>Learningtilewidget(),
            Agriculturetilewidget.routeName:(_)=>Agriculturetilewidget(),
            Emitratilewidget.routeName:(_)=>Emitratilewidget(),
            Enewspappertilewidget.routeName:(_)=>Enewspappertilewidget(),
            Healthtilewidget.routeName:(_)=>Healthtilewidget()



      },
      ),
    );
  }
}
