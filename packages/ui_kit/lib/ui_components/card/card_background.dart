import 'package:flutter/material.dart';

class CardBackground{
  Widget base({ Widget? child, double? height}){
    return  Container(
      width: 335,
      height: height,
      padding:const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.fromBorderSide(
          BorderSide(color: Color(0xFFF4F4F4))
        ),
        color: const Color(0xFFFFFFFF),
        boxShadow: [
          BoxShadow(
            color: Color(0x99E4E8F5),
            blurRadius: 20,
            offset: Offset(0, 0)
          )
        ]
      ),
      child: child,
    );
  }
}