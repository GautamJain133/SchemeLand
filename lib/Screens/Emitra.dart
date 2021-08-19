import 'package:flutter/material.dart';
import 'package:flutter_wepportfolio/Wigets/Scholarshipitem.dart';
import 'package:flutter_wepportfolio/classproviders/scholarshopcategoryList.dart';
import 'package:provider/provider.dart';

class Emitratilewidget extends StatelessWidget {

  static const routeName = './Emitratilewidget';



  @override
  Widget build(BuildContext context) {


    final scholarshipcategorylistdata =
    Provider.of<Scholarshipcategorieslist>(context, listen: false);
    final list = scholarshipcategorylistdata.emitra;



    return Scaffold(
      appBar: AppBar(title: Text("Government Schemes"),),
      body: Container(
        height: MediaQuery.of(context).size.height*double.infinity,
        width: MediaQuery.of(context).size.width*double.infinity,
        child:  ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: list.length,
            itemBuilder: (BuildContext context, int i) {
              return Scholarshipitem(

                color: list[i].scholarshipColor,
                title: list[i].scholarshipTitle,
                id: list[i].schlorshipId,
                siteUrl: list[i].scholarshipSiteurl,

              );
            }
        ),
      ),
    );
  }
}
