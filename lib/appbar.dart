
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyAppBar());

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center
        ,children: [
          Text("App Tutorial",style: TextStyle(fontSize: 22.0,color: Colors.black),),
          Text("Flutter Developers",style: TextStyle(fontSize: 12.0,color: Colors.green,fontWeight: FontWeight.bold)),
        ]),
      ),
      appBar: AppBar(
        title: Text("My-Appbar"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.green,
        leading: IconButton(icon: Icon(Icons.menu),onPressed: (){},),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart)),
        ],
      ),
    );
  }
}




