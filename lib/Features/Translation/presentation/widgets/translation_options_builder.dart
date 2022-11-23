part of 'imports_translation_page.dart';

class TranslationOptionsBuilder extends StatelessWidget {
  final bool isInput;

  const TranslationOptionsBuilder({Key? key, required this.isInput})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final translateController = Get.find<TranslationController>();
    return
        /// Options
        Container(
          color: Colors.white.withOpacity(0.3),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20),
            child: Row(
              children: [
                OutlinedButton(
                  onPressed: () {
                    translateController.copy(
                      context,
                      isInput: isInput,
                    );
                  },
                  child: const Text("Copy"),
                ),
                const SizedBox(
                  width: 20,
                ),
                OutlinedButton(
                  onPressed: () {
                    translateController.orderFieldData(
                      isInput: isInput,
                    );
                  },
                  child: const Text("Order alphabetically"),
                ),
                const SizedBox(
                  width: 15,
                ),
                OutlinedButton(
                  onPressed: () {
                    translateController.beautify(
                      isInput: isInput,
                    );
                  },
                  child: const Text("Beautify"),
                ),
              ],
            ),
          ),
        );
  }
}
