import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class ChipsButton{
  ButtonStyle _baseStyle(){
    return ElevatedButton.styleFrom(
        minimumSize:const Size(129, 48),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
        )
    );
  }

  Widget accentButton({
    required text,
    VoidCallback? onPressed,
  }){
    return ElevatedButton(
        onPressed:  onPressed ,
        style: _baseStyle().copyWith(
            backgroundColor: WidgetStateProperty.all(ui.colors.accent),
            foregroundColor: WidgetStateProperty.all(ui.colors.white)
        ),
        child: _baseText(text)
    );
  }

  Widget unActive({
    required text,
    VoidCallback? onPressed,
  }){
    return ElevatedButton(
        onPressed: onPressed,
        style: _baseStyle().copyWith(
            backgroundColor: WidgetStateProperty.all(ui.colors.inputBg),
            foregroundColor: WidgetStateProperty.all(ui.colors.description)
        ),
        child: _baseText(text)
    );
  }

  Widget _baseText(String text){
    return Text(
      text,
      style: ui.typography.textMedium,
    );
  }
}