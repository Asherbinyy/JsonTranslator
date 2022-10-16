import 'package:json_translator/Core/Colors/Interface/color_interface.dart';
import 'package:json_translator/Core/Colors/Parts/imports_colors.dart';

class AppColors {
  AppColors._();

 static ColorInterface get = LightColor();

 void changeColor(ColorInterface color) {
   get = color;
 }

}