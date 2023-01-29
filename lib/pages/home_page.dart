import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widgets/item_widget.dart';

import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Codepur";

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(
      4, ((index) => CatalogModel.items[0])
    );
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white,
        // elevation: 0.0,
        // iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Catalog App",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          //itemCount: CatalogModel.items.length,
           itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              //item: CatalogModel.items[index],
               item: dummyList[index],
            );
          },
        ),
      ),

      // Center(
      //   child: Container(
      //     child: Text("Welcome to $days days of Flutter by $name"),
      //   ),
      // ),
      drawer: MyDrawer(),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
