import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:quotesapp/screens/Model/quotes_list.dart';
import 'package:quotesapp/screens/Model/quotes_model.dart';
import 'package:quotesapp/screens/component/GrideViewMethod.dart';
import 'package:quotesapp/utils/global.dart';

import 'component/listViewMethod.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    QuosteView = quoteList.map((e) => Quotes.fromMap((e))).toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green.shade900,
        title: const Text(
          'Home Page',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        actions: [
          IconButton(onPressed: () {
            setState(() {
              isGrid=!isGrid;
            });
          }, icon:(isGrid)? Icon(Icons.grid_view,color: Colors.white,):Icon(Icons.list,color: Colors.white,))
        ],
      ),
      body: (isGrid)? GrideviewMethod() : ListviewMethod(),
    );
  }
}
