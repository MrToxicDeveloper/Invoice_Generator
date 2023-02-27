import 'package:flutter/material.dart';
import 'package:product_list/dataEnterScreen.dart';
import 'homePage.dart';
import 'modalData.dart';

List<ModalData> All = [];

void main() {
  runApp(
    MaterialApp(
      theme:   ThemeData(),
            debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomePage(),
        'Enter':(context) => DataEnterScreen(),
      },
    ),
  );
}