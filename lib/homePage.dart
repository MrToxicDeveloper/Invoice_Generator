import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Product List"),
          // actions: [
          //   PopupMenuButton(
          //
          //     icon: Icon(Icons.more_vert),
          //     itemBuilder: (context) {
          //       return [
          //         PopupMenuItem(
          //             child: InkWell(onTap: () {
          //
          //             },
          //                 child: Text("Add product")))
          //       ];
          //     },
          //   ),
          // ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.pushNamed(context, 'Enter'),
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
