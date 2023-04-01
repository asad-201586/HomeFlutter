import 'package:flutter/material.dart';

import '../common_widgets/custom_list_tile.dart';

void main() => runApp(CodeReUse());


class CodeReUse extends StatelessWidget {
  const CodeReUse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CustomListTile(
            title: "Asadul Haque",
            subtitle: "Android Dev",
            leadingIcon: Icons.add,
            iconColor: Colors.blue,
            textTitleColor: Colors.red,
            textSubtitleColor: Colors.green,
          ),
          CustomListTile(title: "Md Forkan", subtitle: "Android Dev"),
          CustomListTile(title: "Sehirul Islam Rehi", subtitle: "Web Dev"),
        ],
      ),
    );
  }
}


