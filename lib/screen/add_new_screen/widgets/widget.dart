import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

Widget getCard(Color clr , bool isActive){
  print("Kelgan qiymat ${isActive}");
  return Container(
    width: 20,
    height: 20,
    decoration: BoxDecoration(
        color : isActive ? clr : Colors.transparent,
        borderRadius: BorderRadius.circular(40),
        border: Border.all(
            width: 1,
            color : clr
        )
    ),
  );
}
Widget getNumberCard(String number){
  return Container(
    width: 80,
    height: 80,
    decoration: BoxDecoration(
        color : Colors.white.withOpacity(0.2),
        borderRadius: BorderRadius.circular(40),
    ),
    child : Center(
      child: Text(number , style:  const TextStyle(
        color : Colors.white,
        fontSize: 30,
        fontWeight: FontWeight.w500
      ),),
    )
  );
}