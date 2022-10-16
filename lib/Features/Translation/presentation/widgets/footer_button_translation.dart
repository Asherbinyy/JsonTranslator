part of 'imports_translation_page.dart';

class FooterButtonTranslation extends StatelessWidget {
  const FooterButtonTranslation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final translateController = Get.find<TranslationController>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              translateController.translate(context);
            },
            child: const Text("Translate"),
          ),
        ),
      ],
    );
  }
}
