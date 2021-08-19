import 'package:flutter/material.dart';
import 'package:flutter_wepportfolio/classproviders/scholarshipcategory.dart';
import 'package:flutter_wepportfolio/classproviders/scholarshopcategoryList.dart';
import 'package:provider/provider.dart';
import 'categories.dart';

class categorieslist with ChangeNotifier {


List<categories> categories_list = [

  categories(
    id:  'c0',
    title: 'Government Schemes',
    color:  Colors.pinkAccent,


  ),

    categories(
       id:  'c1',
        title: 'Scholarship',
       color:  Colors.blueGrey,


        ),
    categories(
        id: 'c2',
        title: 'Health',
       color:  Colors.lightGreenAccent,),

    categories(
        id: 'c3',
       title:  'carrier',
        //Color(0xFFFFF8E1),
     color:    Colors.orange,
        ),
    categories(
        id: 'c4',
        title: 'E-learning',
       color:  Colors.teal.shade300,
        ),
    categories(
       id:  'c5',
        title: 'agriculture',
        color: Colors.red,
      ),
    categories(
       id:  'c6',
       title:  'E-mitra',
       color:  Colors.tealAccent,
      ),
    categories(
       id:  'c7',
       title:  'E-Newspapper',
       color:  Color(0x2FE91E63),
       ),

  ];

  List<categories> get categoriesList {
    return [...categories_list];
  }
}
