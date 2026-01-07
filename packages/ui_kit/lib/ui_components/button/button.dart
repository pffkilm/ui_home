import 'package:flutter/material.dart';

class BigButton1{
   ButtonStyle _baseStyle(){
     return ElevatedButton.styleFrom(
       minimumSize: Size(335, 56),
       padding: EdgeInsets.symmetric(horizontal: 116,vertical: 16),
       shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(10),
       )
     );
   }
}