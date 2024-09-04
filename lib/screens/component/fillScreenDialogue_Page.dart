import 'package:flutter/material.dart';

Padding FullScreenDialog({required String lebal,required String hint}) {
  return Padding(
    padding: const EdgeInsets.only(top: 10,left:15,right:15),
    child: TextField(
      decoration: InputDecoration(
        label: Text(lebal),
        hintText: hint,
        suffixIcon: Icon(Icons.arrow_drop_down),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    ),
  );
}