import 'package:flutter/material.dart';

void main() => runApp(MyListData());

class MyListData extends StatelessWidget {
  MyListData({Key? key}) : super(key: key);

  List<String> products = ["Computer", "Mobile", "Refrigertor","Washing Machine","Monitor","Laptop"];
  List<String> descList = ["Super computer","Digital smartphone","Latest refrigerator","Super washing machine","ViewSonic VA24","HP Pavilion"];

  void _goToCustomListTile(context) {
    Navigator.of(context).pushNamed('/rowAndColumn');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data List"),
        centerTitle: true,
      ),
      body: ListView.builder(
          padding: EdgeInsets.only(top: 16),
          itemCount: products.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: (){_goToCustomListTile(context);},
              child: Container(
                padding: const EdgeInsets.all(16),
                margin: const EdgeInsets.symmetric(vertical: 8,horizontal: 16),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border.all(width: 1,color: Colors.black12),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  color: Colors.white60,
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 16),
                      padding: EdgeInsets.all(18),
                      child: Icon(Icons.image),
                      color: Colors.black12,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          products[index],
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 12
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 8)),
                        Text(
                          descList[index],
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.black26,
                              fontSize: 10,
                          ),
                        ),
                      ],
                    )
                  ],
                ),

              ),
            );
          },
      ),
    );
  }
}
