

import 'package:flutter/material.dart';

void main() => runApp(MyListview());

class MyListview extends StatelessWidget {
  MyListview({Key? key}) : super(key: key);

  List<String> products = ["Computer", "Mobile", "Refrigertor","Washing Machine"];
  List<String> productsDetails = ["Computer Details goes here", "Mobile details goes here", "Refrigertor details goes here","Washing Machine details goes here"];
  List<String> priceList = ["500","877","698","100"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context,index) {
            return ListTile(
              leading: CircleAvatar(child: Text(products[index][0])),
              title: Text(products[index]),
              subtitle: Text(productsDetails[index]),
              trailing: Text(priceList[index].toString()),
              onTap: (){},
            );
          },
        ),
      ),
    );
  }
}
