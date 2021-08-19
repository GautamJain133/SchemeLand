import 'package:flutter/material.dart';

class Scholarshipcategories with ChangeNotifier {
  final String schlorshipId;
  final String scholarshipTitle;
  final Color scholarshipColor;
  final String scholarshipSiteurl;

  Scholarshipcategories({
    @required this.schlorshipId,
    @required this.scholarshipTitle,
    @required this.scholarshipColor,
    @required this.scholarshipSiteurl,
  });
}
