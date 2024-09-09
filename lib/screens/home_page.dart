import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:quotesapp/screens/Model/quotes_list.dart';
import 'package:quotesapp/screens/Model/quotes_model.dart';
import 'package:quotesapp/screens/component/GrideViewMethod.dart';
import 'package:quotesapp/utils/global.dart';

import 'component/fillScreenDialogue_Page.dart';
import 'component/listViewMethod.dart';
import 'component/resetDialogue_Page.dart';

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
                    )),
          
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
                    builder: (context) => resetDialoguePage(
                        title: 'Reset Settings?',
                        text: contentText,
                        isImage: true,
                        isDivider: true,
                        isIcon: true),
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
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => resetDialoguePage(
                        title: 'Dialogue with hero icon',
                        text: contentText2,
                        isImage: false,
                        isDivider: false,
                        isIcon: false),
                  );
                },
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
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => Material(
                    child: Container(
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(Icons.close),
                              ),
                              const Text(
                                "Full-screen dialog title",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              ),
                              Spacer(),
                              TextButton(onPressed: () {}, child: Text('Save'))
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          FullScreenDialog(lebal: 'Lebal', hint: 'Input'),
                          const SizedBox(
                            height: 10,
                          ),
                          FullScreenDialog(
                              lebal: 'Event Name', hint: 'Event Name'),
                          const SizedBox(
                            height: 30,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              'From',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 15),
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: FullScreenDialog(
                                      lebal: 'Lebal', hint: 'Input')),
                              const SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                  child: FullScreenDialog(
                                      lebal: 'Lebal', hint: 'Input')),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              'To',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 15),
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: FullScreenDialog(
                                      lebal: 'Lebal', hint: 'Input')),
                              const SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                  child: FullScreenDialog(
                                      lebal: 'Lebal', hint: 'Input')),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Checkbox(
                                  value: false,
                                  onChanged: (value) {},
                                ),
                              ),
                              const Text('All day'),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text(
                              'Timezone',
                              style: TextStyle(color: Colors.grey, fontSize: 15),
                            ),
                          ),
                          FullScreenDialog(lebal: 'Label', hint: 'Input')
                        ],
                      ),
                    ),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  backgroundColor: Colors.green.shade300),
              child: const Text(
                'Full Screen',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
