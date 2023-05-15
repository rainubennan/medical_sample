import 'package:flutter/material.dart';

class custom_containers extends StatelessWidget {
  var title1;

  var title2;

  var color;

  custom_containers({
    required this.title1,
    required this.title2,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*.1,
      width: MediaQuery.of(context).size.width*.48,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: color),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title1,
            style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 12),),
          Text(title2,
            style: TextStyle(color: Colors.white,fontSize: 20,fontWeight:  FontWeight.w500),),
        ],
      ),
    );
  }
}