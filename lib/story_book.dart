import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class Storybook extends StatefulWidget {
  const Storybook({super.key});

  @override
  State<Storybook> createState() => _StoryBookState();
}

class _StoryBookState extends State<Storybook> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text("Title 1 - Semibold", style: ui.typography.title1Semibold),
              Text(
                "Title 1 -  ExtraBold",
                style: ui.typography.title1ExtraBold,
              ),
              Text("Title 2 -  Regular ", style: ui.typography.title2Regular),
              Text("Title 2 - Semibold ", style: ui.typography.title2Semibold),
              Text(
                "Title 2 -  ExtraBold ",
                style: ui.typography.title2ExtraBold,
              ),
              Text("Title 3 -  Regular", style: ui.typography.title3Regular),
              Text("Title 3 -  Medium", style: ui.typography.title3Medium),
              Text("Title 3 -  Semibold", style: ui.typography.title3Semibold),
              Text("Headline -  Regular", style: ui.typography.headlineRegular),
              Text("Headline -  Medium ", style: ui.typography.headlineMedium),
              Text("Text -  Regular", style: ui.typography.textRegular),
              Text("Text -  Medium ", style: ui.typography.textMedium),
              Text("Caption -  Regular", style: ui.typography.captionRegular),
              Text("Caption -  Semibold", style: ui.typography.captionSemibold),
              Text(
                "Caption 2 -  Regular",
                style: ui.typography.caption2Regular,
              ),
              Text("Caption 2 -  Bold", style: ui.typography.caption2Bold),

              Wrap(
                children: [
                  _buildColorItem('Accent', ui.colors.accent),
                  _buildColorItem('Accent Inactive', ui.colors.accentInactive),
                  _buildColorItem('Black', ui.colors.black),
                  _buildColorItem('White', ui.colors.white),
                  _buildColorItem('Error', ui.colors.error),
                  _buildColorItem('Success', ui.colors.success),
                  _buildColorItem('Input BG', ui.colors.inputBg),
                  _buildColorItem('Input Stroke', ui.colors.inputStroke),
                  _buildColorItem('Input Icon', ui.colors.inputIcon),
                  _buildColorItem('Placeholder', ui.colors.placeholder),
                  _buildColorItem('Description', ui.colors.description),
                  _buildColorItem('Card Stroke', ui.colors.cardStroke),
                ],
              ),
              Wrap(
                children: [
                  ui.images.check(size: 20),
                  ui.images.close(size: 20),
                  ui.images.closeCircle(size: 20),
                  ui.images.delete(size: 20),
                  ui.images.down(size: 20),
                  ui.images.download(size: 20),
                  ui.images.eye(size: 20),
                  ui.images.eyeClose(size: 20),
                  ui.images.file(size: 20),
                  ui.images.filter(size: 20),
                  ui.images.left(size: 20),
                  ui.images.map(size: 20),
                  ui.images.message(size: 20),
                  ui.images.minus(size: 20),
                  ui.images.paperclip(size: 20),
                  ui.images.plus(size: 20),
                  ui.images.points(size: 20),
                  ui.images.search(size: 20),
                  ui.images.telega(size: 20),
                  ui.images.shop(size: 20),
                  ui.images.voice(size: 20),
                ],
              ),

              ui.bigButton.accentButton(text: "Подтвердить", onPressed: () {}),
              SizedBox(height: 5),
              ui.bigButton.accentButton(
                text: "Подтвердить",
                onPressed: null,
                enabled: false,
              ),
              SizedBox(height: 5),
              ui.bigButton.noAccent(text: "Подтвердить", onPressed: () {}),
              SizedBox(height: 5),
              ui.bigButton.unActive(text: "Подтвердить", onPressed: () {}),

              ui.smallButton.accentButton(text: "Добавить", onPressed: () {},),
              SizedBox(height: 5),
              ui.smallButton.delete(text: "Убрать", onPressed: () {}),
              SizedBox(height: 5),
              ui.smallButton.accentButton(text: "Добавить", enabled: false,),
              SizedBox(height: 5),
              ui.smallButton.unActive(text: "Подтвер...", onPressed: () {}),
              SizedBox(height: 5),

              ui.chipsButton.accentButton(text: "Популярные", onPressed: () {}),
              SizedBox(height: 5),
              ui.chipsButton.unActive(text: "Популярные", onPressed: () {}),

              SizedBox(height: 5),

              Input(hint: 'Введите имя'),
              SizedBox(height: 28),
              Input(value: 'Иван', showValidationBorder: true,),
              SizedBox(height: 28),
              Input(label: 'Иван',hint: 'Введите имя'),
              SizedBox(height: 28),
              Input(hasError: true, hint: 'Имя', helperText: 'Введите ваше имя',),
              SizedBox(height: 28),
              Input(label: 'Имя', hint: 'Введите имя'),
              SizedBox(height: 28),
              Input(label: 'Имя', value: 'Введите имя'),
              SizedBox(height: 28),
              Input(value: '*********', isPassword: true),
              SizedBox(height: 28),
              Input(hint: '--.--.----'),
              SizedBox(height: 28),

              ui.counter.active(),
              ui.counter.disabled(),
              SizedBox(height: 10),
              ui.background.base(),
              SizedBox(height: 10),
              ui.productCard.cardButton(
                title: 'Рубашка Воскресенье для машинного\nвязания',
                subtitle: 'Мужская одежда',
                price: '300',
                button: ui.smallButton.accentButton(
                  text: "Добавить",
                  onPressed: () {},
                  enabled: true,
                ),
              ),
              SizedBox(height: 10),

              ui.productCard.cardButton(
                title: 'Рубашка Воскресенье для машинного\nвязания',
                subtitle: 'Мужская одежда',
                price: '300',
                button: ui.smallButton.delete(text: "Убрать", onPressed: () {}),
              ),
              SizedBox(height: 10),
              ui.productCard.cartCounter(
                title: 'Рубашка Воскресенье для машинного вязания',
                price: '300',
                onRemove: () {},
              ),
              SizedBox(height: 10),
              ui.productCard.noPriceCard(
                title: 'Мой первый проект',
                subtitle: 'Прошло 2 дня',
                button: ui.smallButton.accentButton(
                  text: "Открыть",
                  onPressed: () {},
                  enabled: true,
                ),
              ),
              SizedBox(height: 10),
              ui.logo.vk(onPressed: () {}),
              SizedBox(height: 10),
              ui.logo.yandex(onPressed: () {}),
              SizedBox(height: 10),
              ui.search,
              SizedBox(height: 10),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Menu(text: 'Популярные', isActive: _selectedIndex == 0),
                    SizedBox(width: 16),
                    Menu(text: 'Женщинам'),
                    SizedBox(width: 16),
                    Menu(text: 'Мужчинам'),
                    SizedBox(width: 16),
                    Menu(text: 'Детям'),
                    SizedBox(width: 16),
                    Menu(text: 'Аксессуары'),
                  ],
                ),
              ),

              ui.tabBar.create(initialIndex: 0),
              ui.tabBar.create(initialIndex: 1),
              ui.tabBar.create(initialIndex: 2),
             ui.tabBar.create(initialIndex: 3),

              Toggle(isActive: false, onChanged: (value) {}),
              Toggle(isActive: true, onChanged: (value) {}),
              ui.header.kor1(),
              ui.header.kor2(),

            ],
          ),
        ),
      ),
    );
  }

  Widget _buildColorItem(String name, Color color) {
    return Column(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
        SizedBox(
          width: 60,
          child: Text(
            name,
            maxLines: 2,
            textAlign: TextAlign.center,
            style: ui.typography.captionRegular,
          ),
        ),
      ],
    );
  }
}
