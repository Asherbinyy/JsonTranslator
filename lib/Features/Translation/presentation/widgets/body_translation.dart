part of 'imports_translation_page.dart';

class BodyTranslation extends StatelessWidget {
  const BodyTranslation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logic = Get.find<TranslationController>();
    return Expanded(
      child: GetBuilder<TranslationController>(
          init: logic,
          builder: (logic) {
            return SingleChildScrollView(
               child: Form(
                key: logic.formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                    /// Select Languages Options
                      OptionsLanguageSelectBuilder(controller: logic),
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
            );
          }),
    );
  }
}
