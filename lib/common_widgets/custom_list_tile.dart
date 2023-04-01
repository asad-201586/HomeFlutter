import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {

  String title,subtitle;
  IconData leadingIcon, trailingIcon;
  Color iconColor, textTitleColor,textSubtitleColor;

  CustomListTile({
    required this.title,
    required this.subtitle,
    this.leadingIcon = Icons.shopping_cart,
    this.trailingIcon = Icons.star_border,
    this.iconColor = Colors.blue,
    this.textTitleColor = Colors.black,
    this.textSubtitleColor = Colors.black45,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8,top: 8,right: 16,left: 16),
        child: ListTile(
          tileColor: Colors.black12,
          title: Text(title,style: TextStyle(color: textTitleColor),),
          subtitle: Text(subtitle,style: TextStyle(color: textSubtitleColor)),
          leading: Icon(leadingIcon,color: iconColor,),
          trailing: Icon(trailingIcon,color: iconColor,),
          shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: const BorderSide(
                  color: Colors.red,
                  width: 1.0
              )
          ),
        ),
      ),
    );
  }
}