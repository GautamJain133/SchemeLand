import 'package:flutter/material.dart';
import '../Screens/Agriculture.dart';
import '../Screens/Emitra.dart';
import '../Screens/Enewspapper.dart';
import '../Screens/carrier.dart';
import '../Screens/elearningscreen.dart';
import '../Screens/govtschemes.dart';
import '../Screens/health.dart';
import 'package:provider/provider.dart';
import '../classproviders/CategoriesList.dart';

import '../Screens/scholarshipscreen.dart';

class gridviewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final categorylistdata =
        Provider.of<categorieslist>(context, listen: false);
    final list = categorylistdata.categoriesList;













    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(10.0),
      //itemCount: Product.length,
      //gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      // mainAxisExtent: 2,
      // mainAxisExtent: 200,
      // maxCrossAxisExtent: 200

      childAspectRatio: 3 / 2,
      crossAxisSpacing: 20,
      mainAxisSpacing: 20,
      children: [
        InkWell(
          onTap: () async {
            Navigator.pushNamed(context, Govttilewidget.routeName);
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
              color: list[0].color,

              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                list[0].title,
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () async {
            Navigator.pushNamed(context, Listtilewidget.routeName);
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
              color: list[1].color,

              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                list[1].title,
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () async {
            Navigator.pushNamed(context, Healthtilewidget.routeName);
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
              color: list[2].color,

              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                list[2].title,
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () async {
            Navigator.pushNamed(context, carriertilewidget.routeName);
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
              color: list[3].color,

              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                list[3].title,
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () async {
            Navigator.pushNamed(context, Learningtilewidget.routeName);
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
              color: list[4].color,

              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                list[4].title,
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () async {
            Navigator.pushNamed(context, Agriculturetilewidget.routeName);
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
              color: list[5].color,

              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                list[5].title,
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () async {
            Navigator.pushNamed(context, Emitratilewidget.routeName);
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
              color: list[6].color,

              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                list[6].title,
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () async {
            Navigator.pushNamed(context, Enewspappertilewidget.routeName);
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
              color: list[7].color,

              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                list[7].title,
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
          ),
        )
      ],
    );
  }
}
