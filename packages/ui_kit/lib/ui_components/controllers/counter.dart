import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class Counter{
  Widget active({
    VoidCallback? onIncrement,
    VoidCallback? onDecrement
  }){
    return _buildCounter(
        minusColor: ui.colors.inputBackground,
        plusColor: ui.colors.inputText,
        onIncrement: onIncrement ?? () {},
        onDecrement: onDecrement  ?? () {}
    );
  }

  Widget unActiv({
    VoidCallback? onIncrement,
    VoidCallback? onDecrement
  }){
    return _buildCounter(
        minusColor: ui.colors.inputText,
        plusColor: ui.colors.inputText,
        onIncrement: onIncrement ?? () {},
        onDecrement: onDecrement  ?? () {},
    );
  }

   Widget _buildCounter({
    required minusColor,
     required plusColor,
     required VoidCallback onIncrement,
     required VoidCallback onDecrement,
   }) {
     return Container(
       width: 64,
       height: 32,
       decoration: BoxDecoration(
           color: ui.colors.inputBg,
           borderRadius: BorderRadius.circular(8)
       ),
       child: Row(
         children: [
           Expanded(
             child: Container(
               alignment: Alignment.center,
               child: Container(
                 height: 16,
                 decoration: BoxDecoration(
                   border: Border(
                     right: BorderSide(
                       color: ui.colors.inputStroke2,
                       width: 1,
                     ),
                   ),
                 ),
                 child: IconButton(
                   onPressed: onDecrement,
                   icon: ui.images.minus(size: 20, color: minusColor),
                   padding: EdgeInsets.zero,
                 ),
               ),
             ),
           ),
           Expanded(
               child: IconButton(
                 onPressed: onIncrement,
                 icon: ui.images.plus(size: 20, color: plusColor),
                 padding: EdgeInsets.zero,
               )
           ),
         ],
       ),
     );
   }
}