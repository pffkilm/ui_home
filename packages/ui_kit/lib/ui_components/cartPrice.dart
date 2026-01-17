import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class Cart {
  Widget cart({required String price}) {
    return Container(
      width: 335,
      height: 56,
      decoration: BoxDecoration(
        color: ui.colors.accent,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          ui.images.cart(size: 20, color: ui.colors.white),
          SizedBox(width: 16),
          Text(
            "В корзину",
            style: ui.typography.title3Semibold.copyWith(
              color: ui.colors.white,
            ),
          ),
          Spacer(),
          Text('$price ₽',style: ui.typography.title3Semibold.copyWith(color: ui.colors.white), )
        ],
      ),
    );
  }
}
