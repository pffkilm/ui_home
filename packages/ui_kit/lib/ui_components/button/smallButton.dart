import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class SmallButton{

  ButtonStyle _baseStyle(){
    return ElevatedButton.styleFrom(
      maximumSize:const Size(96, 40),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      )
    );
  }

  Widget accentButton({
    required text,
    VoidCallback? onPressed,
    bool enabled = true,
  }){
    return ElevatedButton(
        onPressed: enabled ? onPressed : null,
        style: _baseStyle().copyWith(
            backgroundColor: WidgetStateProperty.resolveWith<Color>(
                  (state) => enabled ? ui.colors.accent : ui.colors.accentInactive,
            ),
            foregroundColor: WidgetStateProperty.all(ui.colors.white)
        ),
        child:_buildText(text)
    );
  }

  Widget delete({
    required text,
    VoidCallback? onPressed,
  }){
    return ElevatedButton(
        onPressed: onPressed,
        style: _baseStyle().copyWith(
            backgroundColor:WidgetStateProperty.all( Colors.white),
            foregroundColor: WidgetStateProperty.all(ui.colors.accent),
            side: WidgetStateProperty.all(
            BorderSide(
            color: ui.colors.accent)
          )
        ),
        child:_buildText(text)
    );
  }

  Widget unActive({
    required text,
    VoidCallback? onPressed,
  }){
    return ElevatedButton(
        onPressed: onPressed,
        style: _baseStyle().copyWith(
            backgroundColor:WidgetStateProperty.all( ui.colors.white),
            foregroundColor: WidgetStateProperty.all(ui.colors.black),
        ),
        child:_buildText(text)
    );
  }


  Widget _buildText(String text){
    return Text(
      text,
      style: ui.typography.captionSemibold,
    );
  }
}