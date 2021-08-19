import 'package:flutter/material.dart';
import 'package:flutter_wepportfolio/classproviders/scholarshipcategory.dart';

class categories with ChangeNotifier {
  final String id;
  final String title;
  final Color color;



  categories({
    @required this.id,
    @required this.title,
    @required this.color,

  });
}
