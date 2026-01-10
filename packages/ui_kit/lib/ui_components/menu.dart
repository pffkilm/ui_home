import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class Menu extends StatelessWidget {
  final String text;
  final bool isActive;

  const Menu({
    super.key,
    required this.text,
    this.isActive = false
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        backgroundColor: isActive ? ui.colors.accent : ui.colors.inputBg,
        foregroundColor: isActive ? ui.colors.white : ui.colors.description,
        minimumSize: Size.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child: Text(text, style: ui.typography.textMedium),
    );
  }
}