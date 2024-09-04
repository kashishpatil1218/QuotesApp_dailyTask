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
          IconButton(
              onPressed: () {
                setState(() {
                  isGrid = !isGrid;
                });
              },
              icon: (isGrid)
                  ? Icon(
                      Icons.grid_view,
                      color: Colors.white,
                    )
                  : Icon(
                      Icons.list,
                      color: Colors.white,
                    ))
        ],
      ),
      body: (isGrid) ? GrideviewMethod() : ListviewMethod(),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(left: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      icon: Icon(Icons.refresh),
                      title: const Center(
                        child: Text(
                          'Reset Settings?',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Divider(
                            thickness: 2,
                          ),
                          const Text(
                            'This will reset your app Prefrence back\nTo their default setting. The following\naccounts will also be signed out: ',
                            style: TextStyle(fontSize: 12),
                          ),
                          const Divider(
                            thickness: 2,
                          ),
                          emialAddress(mail: 'jenelia123@gmail.com'),
                          emialAddress(mail: 'admin345@gmail.com'),
                          emialAddress(mail: 'smith675@gmail.com'),
                          const Divider(thickness: 2,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                             TextButton(onPressed: () {

                             }, child: Text('Cancle')),
                              TextButton(onPressed: () {

                              }, child: Text('Accept'))
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    backgroundColor: Colors.green.shade300),
                child: const Text(
                  'Reset',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                )),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    backgroundColor: Colors.green.shade300),
                child: const Text(
                  'Icons',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                )),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    backgroundColor: Colors.green.shade300),
                child: const Text(
                  'Full Screen',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                )),
          ],
        ),
      ),
    );
  }

  Widget emialAddress({required String mail }) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Row(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.green,
            backgroundImage: NetworkImage(img1),
          ),

          Padding(
            padding: const EdgeInsets.only(left:10),
            child: Text(mail),
          )
        ],
      ),
    );
  }
}
