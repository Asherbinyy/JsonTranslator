part of  'imports_translation_page.dart';
class OptionsLanguageSelectBuilder extends StatelessWidget {
  const OptionsLanguageSelectBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final translateController = Get.find<TranslationController>();
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          /// Input Language
          DropdownButton<String>(
            value: translateController.inputLang,
            items: translateController.languages
                .map((e) => DropdownMenuItem(
              value: e.code,
              child: Text(e.name),
            ))
                .toList(),
            onChanged: (_) {
              translateController.onLangChanged(_, isInput: true);
            },
          ),
          GestureDetector(
            onTap: () {},

            /// reverse lang
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: GestureDetector(
                onTap: () {
                  translateController.reverseLanguages();
                },
                child: const Icon(
                  Icons.swap_horiz_rounded,
                ),
              ),
            ),
          ),

          /// Output Language
          DropdownButton<String>(
            value: translateController.outputLang,
            items: translateController.languages
                .skip(1)
                .map((e) => DropdownMenuItem(
              value: e.code,
              child: Text(e.name),
            ))
                .toList(),
            onChanged: (_) {
              translateController.onLangChanged(_, isInput: false);
            },
          ),
        ],
      ),
    );
  }
}
