part of 'imports_translation_page.dart';

class TextEditingFieldTranslation extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final bool isInput;
  final FormFieldValidator<String>? validator;

  const TextEditingFieldTranslation({
    Key? key,
    this.controller,
    required this.hintText,
    required this.isInput,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final translateController = Get.find<TranslationController>();
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Stack(
            children: [
              TextFormField(
                validator: validator,
                maxLines: 10,
                controller: controller,
                readOnly: isInput ? false : true,
                decoration: InputDecoration(
                  errorBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.redAccent,

                    ),
                  ),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  hintText: hintText,
                  // "Paste your json file here",
                  // labelText: 'Upload your Json File here ! ',
                  // suffixIcon: Icon(Icons.upload_file),
                ),
                autocorrect: true,
                enableSuggestions: true,

              ),
              if (isInput && translateController.inputController?.text != "")
                Align(
                  alignment: Alignment.topRight,
                  child: CloseButton(
                    onPressed: () {
                      translateController.clear();
                    },
                  ),
                ),
            ],
          ),

          /// Options
          TranslationOptionsBuilder(isInput: isInput),
        ],
      ),
    );
  }
}
