import 'package:flutter/material.dart';
import 'package:product_list/modalData.dart';

class DataEnterScreen extends StatefulWidget {
  const DataEnterScreen({Key? key}) : super(key: key);

  @override
  State<DataEnterScreen> createState() => _DataEnterScreenState();
}

class _DataEnterScreenState extends State<DataEnterScreen> {

  TextEditingController txtpname = TextEditingController();
  TextEditingController txtprice = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                controller: txtpname,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Product Name",
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                controller: txtprice,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Product price",
                ),
              ),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: () {
                ModalData md1 = ModalData(Name: txtpname.text, Price: txtprice.text);
                Navigator.pushReplacementNamed(context, 'Enter',arguments: md1);
              },child: Text("Add"))
            ],
          ),
        ),
      ),
    );
  }
}