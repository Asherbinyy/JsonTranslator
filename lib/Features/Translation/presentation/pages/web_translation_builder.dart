import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:json_translator/Core/Colors/app_colors.dart';
import 'package:json_translator/Core/Constants/app_strings.dart';
import 'package:json_translator/Core/Data/data_state.dart';
import 'package:json_translator/Core/Utils/Validator/validate_map.dart';
import 'package:json_translator/Features/Translation/presentation/manager/translation_controller.dart';
import 'package:json_translator/Features/Translation/presentation/widgets/imports_translation_page.dart';

class WebTranslationBuilder extends StatelessWidget {
  const WebTranslationBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logic = Get.find<TranslationController>();
    return GetBuilder<TranslationController>(
        init: logic,
        builder: (logic) {
          return Form(
            key: logic.formKey,
            child: Column(
              children: [
                OptionsLanguageSelectBuilder(controller: logic),
                Row(
                   children: [
                    Expanded(
                      child: Column(
                        //
                        crossAxisAlignment: CrossAxisAlignment.end,

                        children: [
                          /// Display the json file
                          const HeaderInputTranslation(),
                          TextEditingFieldTranslation(
                            controller: logic.inputController,
                            validator: MapDataValidator.validate,
                            hintText:
                            "Paste your json file here Like this : \n ${AppString.jsonExample}",
                            isInput: true,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          /// Display the translated json file
                          const HeaderOutputTranslation(),
                          TextEditingFieldTranslation(
                            controller: logic.outputController,
                            hintText: "Paste your json file here",
                            isInput: false,
                          ),
                          if (logic.state is DataLoading)
                            Obx(() {
                              return LinearProgressIndicator(
                                minHeight: 5,
                                value: logic.loadedProgress,
                                color: AppColors.get.primaryColor.withOpacity(0.6),
                                valueColor:   AlwaysStoppedAnimation<Color>(
                                  AppColors.get.primaryColor,
                                ),
                              );
                            }),
                        ],
                      ),
                    ),
                    /// Select Languages Options
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.height * 0.3,
                  child: const FooterButtonTranslation(   ),),
              ],
            ),
          );
        });
  }
}
