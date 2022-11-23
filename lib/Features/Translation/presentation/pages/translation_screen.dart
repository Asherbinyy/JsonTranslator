import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:json_translator/Features/Translation/presentation/manager/translation_controller.dart';
import 'package:json_translator/Features/Translation/presentation/pages/web_translation_builder.dart';
import 'package:json_translator/Features/Translation/presentation/pages/mobile_translation_screen.dart';
import 'package:json_translator/Parent/responsive_builder.dart';

/// App Features :
/// 1- Translate Json
/// 2- removes any spaces or comments like /
/// 3- reorganize the json file
// GoogleTranslateService.instance
//     .translateMap(inputMap: arEg, from: "en", to: "ar")
// .then((value) {
// print("value is $value");
// });

class TranslationScreen extends StatelessWidget {
  const TranslationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final translateController = Get.put(TranslationController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Json Translator"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: ResponsiveBuilder(
          mobile: MobileTranslationScreen(),
          web: WebTranslationBuilder(),
        ),
        // child: Column(
      ),
    );
  }
}
