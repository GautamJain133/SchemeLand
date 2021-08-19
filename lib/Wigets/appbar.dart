import 'package:flutter/material.dart';
import 'package:flutter_wepportfolio/Wigets/CategoryItem.dart';
import 'package:flutter_wepportfolio/classproviders/CategoriesList.dart';

import 'package:provider/provider.dart';

class appbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(6.0),
        height: MediaQuery.of(context).size.height * 0.35,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.deepPurpleAccent,
            borderRadius: BorderRadius.circular(17.0)),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Icon(
                Icons.arrow_forward_ios_sharp,
                color: Colors.white,
                size: 30,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Unlock Your Future",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 28),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Try to make your dreams become's true",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 12),
              ),
              SizedBox(
                height: 25,
              ),
              TextButton(
                style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.white,
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(7.0)))),
                onPressed: () {
                  showSearch(context: context, delegate: DataSearch());
                },

                // height: 45,
                // width: double.maxFinite,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 7,
                    ),
                    Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Search in category",
                      style: TextStyle(color: Colors.grey, fontSize: 20),
                    )
                  ],
                ),

                // decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(15.0),
                //     color: Colors.white),
              ),
            ],
          ),
        ));
  }
}

class DataSearch extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: Icon(Icons.clear))
    ];

    throw UnimplementedError();
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
    );
    throw UnimplementedError();
  }

  @override
  Widget buildResults(BuildContext context) {
    // the resulth for showing the category

    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final listdata = Provider.of<categorieslist>(context, listen: false);
    final list = listdata.categoriesList;
    final suggestionlist =
        list.where((e) => e.title.startsWith(query)).toList();

    return ListView.builder(
        itemCount: suggestionlist.length,
        itemBuilder: (context, index) => ListTile(
              onTap: () {
                showResults(context);
              },
              leading: Icon(Icons.category),
              title: RichText(
                text: TextSpan(
                    text:
                        suggestionlist[index].title.substring(0, query.length),
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                    children: [
                      TextSpan(
                          text: suggestionlist[index]
                              .title
                              .substring(query.length),
                          style: TextStyle(color: Colors.grey, fontSize: 15))
                    ]),
              ),
            ));

    throw UnimplementedError();
  }
}
