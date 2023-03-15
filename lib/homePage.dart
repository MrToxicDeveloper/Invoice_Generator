import 'package:flutter/material.dart';
import 'package:product_list/main.dart';
import 'package:product_list/modalData.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController txtProduct = TextEditingController();
  TextEditingController txtPrice = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Product List"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              ListView.builder(
                itemBuilder: (context, index) =>
                    Plist(index, All[index].Name!, All[index].Price!),
                itemCount: All.length,
              ),
              Padding(
                padding: const EdgeInsets.all(40),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    TextField(
                                      controller: txtProduct,
                                    ),
                                    TextField(
                                      controller: txtPrice,

                                    ),
                                    ElevatedButton(
                                        onPressed: () {
                                          ModalData m1 = ModalData(
                                              Name: txtProduct.text,
                                              Price: txtPrice.text);
                                          setState(() {
                                            All.add(m1);
                                          });
                                          Navigator.pop(context);
                                        },
                                        child: Text("Add"))
                                  ],
                                ),
                              );
                            },
                          );
                        },
                        child: Text(
                          "Add",
                          style: TextStyle(fontSize: 20),
                        ),
                        style: ButtonStyle(
                            fixedSize: MaterialStatePropertyAll(Size(100, 50))),
                      ),
                      ElevatedButton(
                        onPressed: () {

                          Navigator.pushNamed(context, 'bill');
                        },
                        child: Text(
                          "Invoice",
                          style: TextStyle(fontSize: 20),
                        ),
                        style: ButtonStyle(
                            fixedSize: MaterialStatePropertyAll(Size(100, 50))),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget Plist(int n, String Name, String Price) {
    return ListTile(
      leading: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("${n + 1}"),
        ],
      ),
      title: Text("$Name"),
      subtitle: Text("$Price"),
      trailing: PopupMenuButton(
        itemBuilder: (context) {
          return [
            PopupMenuItem(
              child: InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TextField(
                              controller: txtProduct,
                            ),
                            TextField(
                              controller: txtPrice,
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    All[n].Name = txtProduct.text;
                                    All[n].Price = txtPrice.text;
                                  });
                                  Navigator.pop(context);
                                },
                                child: Text("Submit"))
                          ],
                        ),
                      );
                    },
                  );
                },
                child: Text("Edit"),
              ),
            ),
            PopupMenuItem(
              onTap: () {
                setState(() {
                  All.removeAt(n);
                });
              },
              child: Text(
                "Delete",
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
            ),
          ];
        },
      ),
      shape: Border.all(width: 0.5),
    );
  }
}
