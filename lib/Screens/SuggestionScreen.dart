import 'package:flutter/material.dart';

class Suggestion extends StatelessWidget {
  static const routeName = "./suggestion";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Suggestions/complaints"),
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: "Suggestion",
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(onPressed: () {}, child: Text("Submit"))
        ],
      ),
    );
  }
}
