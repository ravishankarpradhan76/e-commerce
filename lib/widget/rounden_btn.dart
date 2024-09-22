

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundenButton extends StatelessWidget{
  final String btnName;
  final Icon? icon;
  final Color? bgColor;
  final TextStyle? textStyle;
  final VoidCallback? callback;

  RoundenButton({

  required this.btnName,
    this.icon,
    this.bgColor,
    this.textStyle,
    this.callback});

  @override
    Widget build(BuildContext context){
  return ElevatedButton(
      onPressed:() {
        callback!();
      },  child: icon!=null ? Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      icon!,
      Container(
        width: 11,
      ),
      Text(btnName,style: textStyle,)
    ],
  ) : Text(btnName,style: textStyle),
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
         shadowColor: bgColor,
       shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.all(Radius.circular(11),)
       )
      ),

  );
  }
}