part of  'imports_translation_page.dart';
class OptionsLanguageSelectBuilder extends StatelessWidget {
  final TranslationController controller;
  const OptionsLanguageSelectBuilder({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          /// Input Language
          Expanded(
            child: DropdownButton<String>(

              value: controller.inputLang,
              items: controller.languages
                  .map((e) => DropdownMenuItem(
                value: e.code,
                child: Text(e.name),
              ))
                  .toList(),
              onChanged: (_) {
                controller.onLangChanged(_, isInput: true);
              },
            ),
          ),
          GestureDetector(
            onTap: () {},

            /// reverse lang
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: InkWell(
                onTap: () {
                  controller.reverseLanguages();
                },
                child: const Icon(
                  Icons.swap_horiz_rounded,
                ),
              ),
            ),
          ),
          /// Output Language
          Expanded(
            child: DropdownButton<String>(
              value: controller.outputLang,
              items: controller.languages
                  .skip(1)
                  .map((e) => DropdownMenuItem(
                value: e.code,
                child: Text(e.name),
              ))
                  .toList(),
              onChanged: (_) {
                controller.onLangChanged(_, isInput: false);
              },
            ),
          ),
        ],
      ),
    );
  }
}
