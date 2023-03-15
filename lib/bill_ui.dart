import 'package:flutter/material.dart';
import 'package:product_list/main.dart';

class BillUI extends StatefulWidget {
  const BillUI({Key? key}) : super(key: key);

  @override
  State<BillUI> createState() => _BillUIState();
}

class _BillUIState extends State<BillUI> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              "SHOP RECIEPT",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
              width: double.infinity,
            ),
            Divider(thickness: 2),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: All.length,
                itemBuilder: (context, int index) {
                  return Product(index);
                },
              ),
            ),
            Divider(thickness: 2),
            ListTile(
              title: Text("Total Amount"),
              trailing: Text("$sum"),
            ),
          ],
        ),
      ),
    );
  }

  Widget Product(int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        title: Text(
          "${All[index].Name}",
          style: TextStyle(color: Colors.black),
        ),
        trailing: Text(
          "${All[index].Price}",
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
