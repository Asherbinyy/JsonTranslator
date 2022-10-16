import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:json_translator/Features/Translation/presentation/manager/translation_controller.dart';
import 'package:json_translator/Features/Translation/presentation/widgets/imports_translation_page.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: const [
            BodyTranslation(),
            FooterButtonTranslation(),
          ],
        ),
      ),
    );
  }
}
