import 'package:flutter/material.dart';

class payment_details extends StatelessWidget {

  String title;
  String option;
  var icon;
  var style;
  var style1;


  payment_details({
    required this.title,
    this.style,
    required this.option,
    this.style1,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
            style :style),
        Row(

          children: [
            Text(option,
              style: style1),
            IconButton(onPressed: (){}, icon: icon)
          ],
        )
      ],
    );
  }
}