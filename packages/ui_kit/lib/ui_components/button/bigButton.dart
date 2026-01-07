import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class BigButton{

  ButtonStyle _baseStyle(){
    return ElevatedButton.styleFrom(
      minimumSize: const Size(335, 56),
      padding: EdgeInsets.symmetric(horizontal: 115,vertical: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      )
    );
  }

  Widget accentButton({
    required String text,
    VoidCallback? onPressed,
    bool enabled = true,
  }){
    return ElevatedButton(
      onPressed : enabled ? onPressed : null,
      style: _baseStyle().copyWith(
        backgroundColor: WidgetStateProperty.resolveWith<Color>(
            (states) => enabled ? ui.colors.accent : ui.colors.accentInactive,
        ),
        foregroundColor: WidgetStateProperty.all(ui.colors.white)
      ),
      child: _buildText(text),
    );
  }

  Widget delete({
    required String text,
    VoidCallback? onPressed,
  }){
    return ElevatedButton(
      onPressed : onPressed,
      style: _baseStyle().copyWith(
          backgroundColor: WidgetStateProperty.all(ui.colors.white),
          foregroundColor: WidgetStateProperty.all(ui.colors.accent),
        side: WidgetStateProperty.all(
          BorderSide(
            color: ui.colors.accent
          )
        )
      ),
      child: _buildText(text),
    );
  }

  Widget unActiv({
    required String text,
    VoidCallback? onPressed,

  }){
    return ElevatedButton(
      onPressed : onPressed,
      style: _baseStyle().copyWith(
          backgroundColor: WidgetStateProperty.all(ui.colors.inputBg),
          foregroundColor: WidgetStateProperty.all(ui.colors.black),
      ),
      child: _buildText(text),
    );
  }

  Widget _buildText(String text){
    return Text(
      text,
      style: ui.typography.title3Semibold,
    );
  }
}