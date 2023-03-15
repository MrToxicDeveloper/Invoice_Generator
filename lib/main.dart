import 'package:flutter/material.dart';
import 'package:product_list/bill_ui.dart';
import 'package:product_list/dataEnterScreen.dart';
import 'homePage.dart';
import 'modalData.dart';

List<ModalData> All = [];
int sum = 0;

void main() {
  runApp(
    MaterialApp(
      theme:   ThemeData(),
            debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomePage(),
        // '/': (context) => HomePage(),
        'bill':(context) => BillUI(),
      },
    ),
  );
}