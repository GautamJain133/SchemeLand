// import 'package:flutter/material.dart';
// import 'package:flutter_wepportfolio/Wigets/scholarshipscreen.dart';
// import 'package:url_launcher/url_launcher.dart';
//
// class Categoryitem extends StatelessWidget {
//   @required
//   final String title;
//   final Color color;
//   final String id;
//
//
//   Categoryitem({this.title, this.id, this.color});
//
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () async {
//     Navigator.pushNamed(context, Listtilewidget.routeName);
//       },
//       splashColor: Theme.of(context).primaryColor,
//       borderRadius: BorderRadius.circular(15),
//       child: Container(
//         padding: const EdgeInsets.all(15),
//         decoration: BoxDecoration(
//           // gradient: LinearGradient(
//           //     colors: [color.withOpacity(0.7), color],
//           //     begin: Alignment.topLeft,
//           //     end: Alignment.bottomRight),
//           color: color,
//
//           borderRadius: BorderRadius.circular(15),
//         ),
//         child: Padding(
//           padding: const EdgeInsets.all(10.0),
//           child: Text(
//             title,
//             style: Theme.of(context).textTheme.headline6,
//           ),
//         ),
//       ),
//     );
//
//     // return GridTile(
//     //
//     //     child:Image(
//     //
//     //            image: ikon,
//     //            fit: BoxFit.cover,
//     //
//     //     ),
//     //
//     //    footer: GridTileBar(
//     //
//     //      backgroundColor: color,
//     //      title: Text(
//     //        title,
//     //        textAlign: TextAlign.center,
//     //        style: (TextStyle(color: Colors.deepPurple)),
//     //      ),
//     //    ),
//     //  );
//   }
// }
