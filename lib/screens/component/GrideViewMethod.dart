import 'package:flutter/material.dart';

import '../../utils/global.dart';

class GrideviewMethod extends StatelessWidget {
  const GrideviewMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2),
        physics: BouncingScrollPhysics(),
        itemCount: QuosteView.length,
        itemBuilder: (context, index) => Card(
          color: Colors.green.shade100,
          elevation: 8,
          child: ListTile(
            title: Text(QuosteView[index].quote,overflow: TextOverflow.ellipsis,maxLines: 4,),
            subtitle: Text(QuosteView[index].author),
          ),
        ),
      ),
    );
  }
}
