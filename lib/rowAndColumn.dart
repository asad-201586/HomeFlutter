

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(RowAndColumn());

class RowAndColumn extends StatelessWidget {
  const RowAndColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rows and Columns"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(child: Image(image: AssetImage("assets/rain.jpg"))),
                Expanded(flex: 2,child: Image(image: AssetImage("assets/rain.jpg"))),
                Expanded(child: Image(image: AssetImage("assets/rain.jpg"))),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star,size: 25,),
                Icon(Icons.star,size: 25,),
                Icon(Icons.star,size: 25,),
                Icon(Icons.star_border,size: 25,),
                Icon(Icons.star_border,size: 25,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(Icons.phone,size: 35,),
                    Text("Phone")
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.alt_route,size: 35,),
                    Text("Route")
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.share,size: 35,),
                    Text("Route")
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
