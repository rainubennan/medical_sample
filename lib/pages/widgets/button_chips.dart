import 'package:flutter/material.dart';

class Button_chips extends StatelessWidget {
  var text;
  var height;
  var width;
  var color;

  Button_chips({
    required this.height,
    required this.width,
    required this.text,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
          color: color),
      child: Center(child: Text(text,style: TextStyle(fontSize: 17),),),
    );
  }
}
