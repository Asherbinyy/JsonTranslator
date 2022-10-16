part of 'imports_translation_page.dart';

class BodyTranslation extends StatelessWidget {
  const BodyTranslation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final translateController = Get.find<TranslationController>();
    return Expanded(
      child: GetBuilder<TranslationController>(
          init: TranslationController(),
          builder: (logic) {
            return SingleChildScrollView(
              child: Form(
                key: translateController.formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// Display the json file
                    const HeaderInputTranslation(),
                    TextEditingFieldTranslation(
                      controller: translateController.inputController,
                      validator: MapDataValidator.validate,
                      hintText:
                          "Paste your json file here Like this : \n ${AppString.jsonExample}",
                      isInput: true,
                    ),

                    /// Select Languages Options
                    const OptionsLanguageSelectBuilder(),

                    /// Display the translated json file
                    const HeaderOutputTranslation(),
                    TextEditingFieldTranslation(
                      controller: translateController.outputController,
                      hintText: "Paste your json file here",
                      isInput: false,
                    ),
                    if (translateController.state is DataLoading)
                      Obx(() {
                        return LinearProgressIndicator(
                          minHeight: 5,
                          value: translateController.loadedProgress,
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
