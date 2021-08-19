import 'package:flutter/material.dart';
import 'gridviewWidget.dart';

class categories_container extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(6.0),
        height: MediaQuery.of(context).size.height * 0.3,
        width: double.maxFinite,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(17.0)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Category",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Expanded(
              child: Container(
                  height: MediaQuery.of(context).size.height * 0.65,
                  child: gridviewWidget()),
            ),
          ],
        ),
      ),
    );
  }
}
