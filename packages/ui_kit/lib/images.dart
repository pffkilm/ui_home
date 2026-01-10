import 'package:flutter/material.dart';

class AppImages{
  Image check({double? size, Color? color}) => _icon('check',size: size, color: color);
  Image close({double? size, Color? color}) => _icon('close', size: size, color: color);
  Image closeCircle({double? size, Color? color}) => _icon('closeCircle',size: size,color: color);
  Image delete({double? size, Color? color}) => _icon('delete',size: size, color: color);
  Image down({double? size, Color? color}) => _icon('down', size: size, color: color);
  Image download({double? size, Color? color}) => _icon('download',size: size,color: color);
  Image eye({double? size, Color? color}) => _icon('eye',size: size, color: color);
  Image eyeClose({double? size, Color? color}) => _icon('eyeClose', size: size, color: color);
  Image file({double? size, Color? color}) => _icon('file',size: size,color: color);
  Image filter({double? size, Color? color}) => _icon('filter',size: size, color: color);
  Image left({double? size, Color? color}) => _icon('left', size: size, color: color);
  Image map({double? size, Color? color}) => _icon('map',size: size,color: color);
  Image message({double? size, Color? color}) => _icon('message',size: size, color: color);
  Image minus({double? size, Color? color}) => _icon('minus', size: size, color: color);
  Image paperclip({double? size, Color? color}) => _icon('paperclip',size: size,color: color);
  Image plus({double? size, Color? color}) => _icon('plus',size: size, color: color);
  Image points({double? size, Color? color}) => _icon('points', size: size, color: color);
  Image search({double? size, Color? color}) => _icon('search',size: size,color: color);
  Image telega({double? size, Color? color}) => _icon('telega',size: size,color: color);
  Image shop({double? size, Color? color}) => _icon('shop',size: size, color: color);
  Image voice({double? size, Color? color}) => _icon('voice', size: size, color: color);
  Image yandex({double? size, Color? color}) => _icon('yandex', size: size, color: color);
  Image vk({double? size, Color? color}) => _icon('vk', size: size, color: color);
  Image home({double? size, Color? color}) => _icon('home',size: size, color: color);
  Image katalog({double? size, Color? color}) => _icon('katalog', size: size, color: color);
  Image profile({double? size, Color? color}) => _icon('profile', size: size, color: color);
  Image project({double? size, Color? color}) => _icon('project', size: size, color: color);



  Image _icon(String name, {double? size, Color? color}){
    return Image.asset(
        'packages/ui_kit/assets/images/$name.png',
      height: size,
      width: size,
      color: color

    );
  }

}

