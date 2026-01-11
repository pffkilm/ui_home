import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class Toggle extends StatefulWidget {
  final bool isActive;
  final ValueChanged<bool>? onChanged;

  const Toggle({
    super.key,
    this.isActive = false,
    this.onChanged,
  });

  @override
  State<Toggle> createState() => _ToggleState();
}

class _ToggleState extends State<Toggle> {
  bool _isActive = false;

  @override
  void initState() {
    super.initState();
    _isActive = widget.isActive;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() => _isActive = !_isActive);
        widget.onChanged?.call(_isActive);
      },
      child: Container(
        width: 48,
        height: 28,
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: _isActive ? ui.colors.accent : ui.colors.inputStroke2,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Align(
          alignment: _isActive ? Alignment.centerRight : Alignment.centerLeft,
          child: Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: const Color(0x0F000000),
                  blurRadius: 1,
                  offset: const Offset(0, 3),
                ),
                BoxShadow(
                  color: const Color(0x26000000),
                  blurRadius: 8,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}