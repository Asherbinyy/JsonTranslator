import 'package:flutter/material.dart';
import 'package:json_translator/Core/Controller/controller_interface.dart';

abstract class TranslationControllerInterface extends ControllerImp {
  void translate(BuildContext context);

  void clear();

  void copy(BuildContext context,{required bool isInput});

  void onLangChanged(String? value, {required bool isInput});

  void reverseLanguages();

  void orderFieldData({required bool isInput});


  void beautify();
}
