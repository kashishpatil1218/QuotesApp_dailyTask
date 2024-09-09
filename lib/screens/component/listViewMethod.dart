import 'package:flutter/material.dart';
import 'package:quotesapp/screens/Model/quotes_list.dart';
import 'package:quotesapp/screens/Model/quotes_model.dart';

import '../../utils/global.dart';

class ListviewMethod extends StatelessWidget {
  const ListviewMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        itemCount: QuosteView.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed('/editingpage');
            quote=Quotes(quoteList[index].quote,quoteList[index].author);
          },
          child: Card(
            elevation:8,
            color: Colors.green.shade100,
            child: ListTile(
              title: Text(QuosteView[index].quote,),
              subtitle: Text(QuosteView[index].author),
            ),
          ),
        ),),
    );
  }
}
