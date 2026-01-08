import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class ProductCard {

  Widget cardButton({
    required String title,
    String? subtitle,
    required String price,
    required Widget button,
  }) {
    return  ui.background.base(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Text(
              title,
              style: ui.typography.headlineMedium,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(height: 16),
          Expanded(
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (subtitle != null)
                      Text(
                        subtitle,
                        style: ui.typography.captionSemibold.copyWith(
                          color: ui.colors.inputText,
                        ),
                      ),
                    Text('$price ₽', style: ui.typography.title3Semibold),
                  ],
                ),
                const Spacer(),
                button,
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget noPriceCard({
    required String title,
    String? subtitle,
    required Widget button,
  }) {
    return ui.background.base(
      height: 136,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: ui.typography.headlineMedium),
          Spacer(),
          Row(
            children: [
              if (subtitle != null)
                Expanded(
                  child: Text(
                    subtitle,
                    style: ui.typography.captionSemibold.copyWith(
                      color: const Color(0xFF939396),
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),

              if (subtitle == null) Spacer(),
              button,
            ],
          ),
        ],
      ),
    );
  }

  Widget cartCounter({
    required String title,
    required String price,
    required VoidCallback onRemove,
  }) {
    return _CartCounter(
      title: title,
      price: price,
      onRemove: onRemove,
    );
  }
}

class _CartCounter extends StatefulWidget {
  final String title;
  final String price;
  final VoidCallback onRemove;

  const _CartCounter({
    required this.title,
    required this.price,
    required this.onRemove,
  });

  @override
  State<_CartCounter> createState() => _CartCounterStatefulWidget();
}

class _CartCounterStatefulWidget extends State<_CartCounter> {
  int _count = 1;

  void _increment() {
    setState(() {
      _count++;
    });
  }

  void _decrement() {
    setState(() {
      if (_count > 1) _count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ui.background.base(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  widget.title,
                  style: ui.typography.headlineMedium,
                  maxLines: 2,
                ),
              ),
              GestureDetector(
                onTap: widget.onRemove,
                child: ui.images.close(size: 20),
              ),
            ],
          ),
          Spacer(),

          Row(
            children: [
              Text(
                  '${widget.price} ₽',
                  style: ui.typography.title3Semibold
              ),
              Spacer(),
              Text(
                '$_count штук',
                style: ui.typography.textRegular.copyWith(
                  color: ui.colors.inputText,
                ),
              ),

              SizedBox(width: 42),

              _count == 1
                  ? ui.counter.active(
                onIncrement: _increment,
                onDecrement: _decrement,
              )
                  : ui.counter.disabled(
                onIncrement: _increment,
                onDecrement: _decrement,
              ),
            ],
          ),
        ],
      ),
    );
  }
}