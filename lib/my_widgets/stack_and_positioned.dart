import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyStackAndPositioned());


class MyStackAndPositioned extends StatelessWidget {
  const MyStackAndPositioned({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StackAndPosition(),
    );
  }
}

class StackAndPosition extends StatelessWidget {
  const StackAndPosition({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16),
        height: 200,
        width: 300,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          shape: BoxShape.rectangle,
          color: Colors.red
        ),
        child: Stack(
          children: const [
            Positioned(
              child: Text("Md Asadul Haque",style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold)),
            ),
            Positioned(
              top: 20,
              child: Text("Android App Developer",style: TextStyle(
                  color: Colors.white54,
                  fontSize: 14,
                  fontWeight: FontWeight.normal)),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Text("Othoba App",style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.normal)),
            ),
            Positioned(
              bottom: 20,
              right: 0,
              child: Text("Smart Manufacture",style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.normal)),
            ),
          ],
        ),
      ),
    );
  }
}

