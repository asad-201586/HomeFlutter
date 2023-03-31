

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyBottomNavBar());

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Text("Hello Bottom Navigation"),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Bottom Navigation"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        padding: EdgeInsets.only(bottom: 10),
        shape: CircularNotchedRectangle(),
        child: Row(
          children: <Widget>[
            IconButton(onPressed: (){}, icon: Icon(Icons.menu,color: Colors.white,)),
            IconButton(onPressed: (){}, icon: Icon(Icons.home,color: Colors.white,)),
            const Spacer(),
            IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.white,)),
            IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart,color: Colors.white,)),
          ],
        ),
      ),
    );
  }
}
