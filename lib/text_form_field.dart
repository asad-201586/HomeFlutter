import 'package:flutter/material.dart';
import 'package:home_flutter/my_widgets/stateful_widget.dart';

void main() => runApp(MyTextFormField());

class MyTextFormField extends StatefulWidget {
  const MyTextFormField({Key? key}) : super(key: key);

  @override
  State<MyTextFormField> createState() => _MyTextFormFieldState();
}

class _MyTextFormFieldState extends State<MyTextFormField> {

  var _productName;
  void _updateProductName(value) {
    setState(() {
      _productName = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Form Field"),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: [
            TextFormField(
              onChanged: (value) {
                _updateProductName(value);
              },
              decoration: InputDecoration(
                  labelText: "Enter name",
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder()
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: Text("Your product is: $_productName"),
            )
          ],
        ),
      ),
    );
  }
}
