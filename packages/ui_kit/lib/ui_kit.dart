library ui_kit;

import 'package:ui_kit/colors.dart';
import 'package:ui_kit/ui_components/button/bigButton.dart';
import 'package:ui_kit/images.dart';
import 'package:ui_kit/typography.dart';
import 'package:ui_kit/ui_components/button/chipsButton.dart';
import 'package:ui_kit/ui_components/button/smallButton.dart';

export 'colors.dart';
export 'typography.dart';
export 'ui_components/button/bigButton.dart';
export 'images.dart';


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

}
final ui = MatuleKit();