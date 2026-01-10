import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class LogoButtons {
  const LogoButtons();

  Widget vk({
    VoidCallback? onPressed,
  }) {
    return _buildButton(
      ui.images.vk(size: 32),
      "Войти с VK",
      onPressed,
    );
  }

  Widget yandex({
    VoidCallback? onPressed,
  }) {
    return _buildButton(
      ui.images.yandex(size: 32),
      "Войти с Yandex",
      onPressed,
    );
  }

  // Общий для всех кнопок
  Widget _buildButton(
      Widget icon,
      String text,
      VoidCallback? onPressed,
      ) {
    return SizedBox(
      width: 335,
      height: 60,
      child: TextButton(
        onPressed:  onPressed ,
        style: TextButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          side: BorderSide(color: ui.colors.inputStroke2, width: 1.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            const SizedBox(width: 16),
            Text(text, style: TextStyle(color: ui.colors.black, fontSize: 17)),
          ],
        ),
      ),
    );
  }
}