import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:json_translator/Features/Translation/presentation/manager/translation_controller.dart';
import 'package:json_translator/Features/Translation/presentation/widgets/imports_translation_page.dart';
import 'package:json_translator/Parent/responsive_builder.dart';

class MobileTranslationScreen extends StatelessWidget {
  const MobileTranslationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        BodyTranslation(),
        // CopyRightsBuilder(),
        FooterButtonTranslation(),
      ],
    );
  }
}
