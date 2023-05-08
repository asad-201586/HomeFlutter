import 'package:flutter/material.dart';

void main() => runApp(MyStateLFulWidget());

class MyStateLFulWidget extends StatelessWidget {
  const MyStateLFulWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NewStateFulWidget();
  }
}


class NewStateFulWidget extends StatefulWidget {
  const NewStateFulWidget({Key? key}) : super(key: key);

  @override
  State<NewStateFulWidget> createState() => _NewStateFulWidgetState();
}

class _NewStateFulWidgetState extends State<NewStateFulWidget> {

  bool like = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          subtitle: Text("abc"),
          title: Text("Like the post"),
          leading: Icon(Icons.star_border),
          trailing: IconButton(
            onPressed: (){
              setState(() {
                like = !like;
              });
            },
            icon: like ? Icon(Icons.favorite_border) : Icon(Icons.favorite,color: Colors.red,)
          ),
        )
      ],
    );
  }
}

