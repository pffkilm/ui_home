import 'package:flutter/cupertino.dart';
import 'package:ui_kit/ui_kit.dart';

class Header {
  Widget kor1() {
    return Container(
      width: 375,
      height: 84,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xFFF5F5F9),
                ),
                child: ui.images.left(size: 20),
              ),
              Spacer(),
              ui.images.delete(size: 20),
            ],
          ),
          SizedBox(height:10),
          Text("Корзина", style: ui.typography.title1ExtraBold),
        ],
      ),
    );
  }

  Widget kor2() {
    return Container(
      width: 375,
      height: 48,
      child: Column(
        children: [
          // Вся строка с иконкой слева, текстом по центру и иконкой справа
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween, // Распределяем пространство
            children: [
              // Иконка слева
              Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xFFF5F5F9),
                ),
                child: ui.images.left(size: 20),
              ),

              // Текст по центру
              Text("Корзина", style: ui.typography.title1ExtraBold),

              // Иконка справа
              ui.images.delete(size: 20),
            ],
          ),
        ],
      ),
    );
  }
}