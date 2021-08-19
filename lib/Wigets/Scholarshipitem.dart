import 'package:flutter/material.dart';
import '../Screens/scholarshipscreen.dart';
import 'package:url_launcher/url_launcher.dart';

class Scholarshipitem extends StatelessWidget {
  @required
  final String title;
  final Color color;
  final String id;
  final String siteUrl;


  Scholarshipitem({this.title, this.id, this.color,this.siteUrl});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {

      },
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          // gradient: LinearGradient(
          //     colors: [color.withOpacity(0.7), color],
          //     begin: Alignment.topLeft,
          //     end: Alignment.bottomRight),
          color: color,

          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            title,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
      ),
    );

    // return GridTile(
    //
    //     child:Image(
    //
    //            image: ikon,
    //            fit: BoxFit.cover,
    //
    //     ),
    //
    //    footer: GridTileBar(
    //
    //      backgroundColor: color,
    //      title: Text(
    //        title,
    //        textAlign: TextAlign.center,
    //        style: (TextStyle(color: Colors.deepPurple)),
    //      ),
    //    ),
    //  );
  }
}
