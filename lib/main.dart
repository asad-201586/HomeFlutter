import 'package:flutter/material.dart';
import 'package:home_flutter/appbar.dart';
import 'package:home_flutter/common_widgets/custom_list_tile.dart';
import 'package:home_flutter/list_view_builder.dart';
import 'package:home_flutter/my_widgets/stack_and_positioned.dart';
import 'package:home_flutter/practice_list.dart';
import 'package:home_flutter/rowAndColumn.dart';

import 'my_widgets/bottomnavbar.dart';
import 'my_widgets/code_reuse.dart';
import 'my_widgets/stateful_widget.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Home",
      home: MyListData(),
      routes: <String, WidgetBuilder> {
        '/rowAndColumn': (BuildContext context) => const RowAndColumn()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
    );
  }
}

