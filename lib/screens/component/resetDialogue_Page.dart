import 'package:flutter/material.dart';

import '../../utils/global.dart';

Widget resetDialoguePage(
    {required String title,
    required String text,
    required bool isImage,
    required bool isDivider,
    required bool isIcon}) {
  return AlertDialog(
    icon:
        isIcon ? Icon(Icons.restart_alt_outlined) : Icon(Icons.mobile_friendly),
    title: Center(
      child: Text(
        title,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
      ),
    ),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          text,
          maxLines: 3,
          style: TextStyle(fontSize: 12),
        ),
        isDivider
            ? const Divider(
                thickness: 2,
              )
            : Padding(padding: EdgeInsets.zero),
        isImage
            ? Column(
              children: [
                emialAddress(mail: 'jenelia123@gmail.com', img: img1),
                emialAddress(mail: 'admin345@gmail.com', img: img2),
                emialAddress(mail: 'smith675@gmail.com', img: img3),
              ],
            )
            : Padding(padding: EdgeInsets.zero),
        isDivider
            ? const Divider(
                thickness: 2,
              )
            : Padding(padding: EdgeInsets.zero),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(onPressed: () {}, child: Text('Cancle')),
            TextButton(onPressed: () {}, child: Text('Accept'))
          ],
        ),
      ],
    ),
  );
}

Widget emialAddress({required String mail, required String img}) {
  return Padding(
    padding: const EdgeInsets.only(top: 5),
    child: Row(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.green,
          backgroundImage: NetworkImage(img),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(mail),
        )
      ],
    ),
  );
}
