library ui_kit;

import 'package:ui_kit/colors.dart';
import 'package:ui_kit/ui_components/button/bigButton.dart';
import 'package:ui_kit/images.dart';
import 'package:ui_kit/typography.dart';
import 'package:ui_kit/ui_components/button/chipsButton.dart';
import 'package:ui_kit/ui_components/button/smallButton.dart';
import 'package:ui_kit/ui_components/card/card_background.dart';
import 'package:ui_kit/ui_components/card/cards.dart';
import 'package:ui_kit/ui_components/controllers/counter.dart';
import 'package:ui_kit/ui_components/controllers/toggle.dart';
import 'package:ui_kit/ui_components/header.dart';
import 'package:ui_kit/ui_components/login.dart';
import 'package:ui_kit/ui_components/search.dart';
import 'package:ui_kit/ui_components/tabBar.dart';
import 'package:ui_kit/ui_components/cartPrice.dart';
import 'package:ui_kit/ui_components/tabBar.dart';


export 'colors.dart';
export 'typography.dart';
export 'ui_components/button/bigButton.dart';
export 'ui_components/button/chipsButton.dart';
export 'ui_components/button/smallButton.dart';
export 'images.dart';
export 'ui_components/card/card_background.dart';
export 'ui_components/controllers/counter.dart';
export 'ui_components/controllers/toggle.dart';
export 'ui_components/input.dart';
export 'ui_components/menu.dart';


class MatuleKit{
  static  final MatuleKit _instance = MatuleKit._internal();
  factory MatuleKit() => _instance;
  MatuleKit._internal();


  AppColors get colors => AppColors();
  AppTypography get typography => AppTypography();
  AppImages get images => AppImages();
  BigButton get bigButton => BigButton();
  SmallButton get smallButton => SmallButton();
  ChipsButton get chipsButton => ChipsButton();
  CardBackground get  background => CardBackground();
  ProductCard get productCard => ProductCard();
  Counter get counter => Counter();
  SearchField get search => SearchField();
  LogoButtons get logo => LogoButtons();
  BottomNavigation get tabBar => BottomNavigation();
  Toggle get toggle =>  Toggle();
  CartPrice get cart => CartPrice();
  Header get header => Header();



}
final ui = MatuleKit();