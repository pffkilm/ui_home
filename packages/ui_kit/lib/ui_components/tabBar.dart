import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class BottomNavigationHelper {
  Widget create({int initialIndex = 0}) {
    return _BottomNavigationWidget(initialIndex: initialIndex);
  }
}


class _BottomNavigationWidget extends StatefulWidget {
  final int initialIndex;

  const _BottomNavigationWidget({
    required this.initialIndex
  });

  @override
  State<_BottomNavigationWidget> createState() => _BottomState();
}

class _BottomState extends State<_BottomNavigationWidget> {
  late int _currentIndex;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initialIndex;
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      currentIndex: _currentIndex,
      onTap:
          (index) => setState(() => _currentIndex = index),
      type: BottomNavigationBarType.fixed,
      selectedItemColor: ui.colors.accent,
      unselectedItemColor: ui.colors.inputBackground,
      selectedLabelStyle: ui.typography.caption2Regular,
      unselectedLabelStyle: ui.typography.caption2Regular,
      items: [
        BottomNavigationBarItem(
          icon: _currentIndex == 0 ? ui.images.home(size: 32, color: ui.colors.accent) : ui.images.home(size: 32),
          label: 'Главная',
        ),
        BottomNavigationBarItem(
          icon: _currentIndex == 1 ? ui.images.katalog(size: 32, color: ui.colors.accent) : ui.images.katalog(size: 32),
          label: 'Каталог',
        ),
        BottomNavigationBarItem(
          icon: _currentIndex == 2 ? ui.images.project(size: 32, color: ui.colors.accent) : ui.images.project(size: 32),
          label: 'Проекты',
        ),
        BottomNavigationBarItem(
          icon: _currentIndex == 3 ? ui.images.profile(size: 32, color: ui.colors.accent) : ui.images.profile(size: 32),
          label: 'Профиль',
        ),
      ],
    );
  }
}