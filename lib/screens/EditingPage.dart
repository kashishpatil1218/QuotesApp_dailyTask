import 'package:flutter/material.dart';
import 'package:quotesapp/utils/global.dart';

class EditingPage extends StatefulWidget {
  const EditingPage({super.key});

  @override
  State<EditingPage> createState() => _EditingPageState();
}

class _EditingPageState extends State<EditingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body:Column(
         children: [
           Text(quote!.quote,),
         ],
       )
    );
  }
}
