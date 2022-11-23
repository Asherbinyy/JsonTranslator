import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:json_translator/Core/Data/data_state.dart';
import 'package:json_translator/Core/Service/google_translate_service.dart';
import 'package:json_translator/Core/Utils/basic_extentions.dart';
import 'package:json_translator/Core/Utils/utils.dart';
import 'package:json_translator/Features/Translation/presentation/manager/translation_controller_interface.dart';
import 'package:json_translator/Features/Translation/presentation/widgets/dialog_inserted_example.dart';

class TranslationController extends TranslationControllerInterface {
  ScrollController ? scrollController ;
  /// Initialized Values
  TextEditingController? inputController;
  TextEditingController? outputController;
  Map<String, dynamic>? _inputMap;
  Map<String, dynamic>? _outputMap;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final RxDouble _loadedProgress = 0.0.obs;

  double get loadedProgress => _loadedProgress.value;

  /// Translation
  @override
  Future<void> translate(BuildContext context) async {
    emit(const DataLoading());
    if (formKey.currentState!.validate()) {
      _turnInputIntoMap((inputController?.text ?? ""));
      printDM(
          "inputCode $inputLang + outputCode $outputLang + input map is $_inputMap + output map is $_outputMap");
      final value = await GoogleTranslateService.instance.translateMap(
          inputMap: _inputMap ?? {},
          from: inputLang,
          to: outputLang,
          progressCallback: (progress) {
            _loadedProgress.value = progress;
            printDM("progress is $progress");
          });
      _validateSelectedLanguages();
      _turnOutputIntoString(value);
      emit(const DataSuccess(null));
    } else {
      emit(DataFailed(ErrorModel(
          errorTitle:
              "Something Wrong with the inserted Json Map Please make sure it follows the example ")));
      Utils.showSnackBar(
        context,
        actionLabel: "show",
        onActionPressed: () {
          Utils.showInfoDialog(
            context,
            child: const DialogInsertedExample(),
          );
        },
        title: state.error?.errorTitle ?? "Something went wrong",
      );
    }
  }

  void _turnInputIntoMap(String value) {
    _inputMap = value.toDecodedMap;
  }

  void _turnOutputIntoString(Map<String, dynamic> map) {
    outputController?.text = map.toEncodedString;
  }

  void _validateSelectedLanguages() {
    if (inputLang == outputLang) {
      inputLang = "auto";
      update();
    }
  }

  /// language options
  final languages = GoogleTranslateService.instance.languages;
  String inputLang = "ar";
  String outputLang = "en";

  @override
  void onLangChanged(String? value, {required bool isInput}) {
    if (isInput) {
      inputLang = value ?? "";
    } else {
      outputLang = ((value == "auto")
          ? (inputLang == "en" ? "ar" : "en")
          : (value ?? ""));
    }
    update();
  }

  @override
  void reverseLanguages() {
    printDM("reverseLanguages");
    final inp = inputLang;
    inputLang = outputLang;
    outputLang = inp;
    update();
  }

  /// Actions
  @override
  void copy(BuildContext context, {required bool isInput}) {
    Utils.copyToClipboard(context,
        text: isInput
            ? (inputController?.text ?? "")
            : outputController?.text ?? "");
  }

  @override
  void orderFieldData({required bool isInput}) {
    if (isInput) {
      final inputValue = inputController?.text ?? "";
      _inputMap = inputValue.toDecodedMap.toAlphabeticalOrder;
      inputController?.text = _inputMap?.toEncodedString ?? "";
    } else {
      final outputValue = outputController?.text ?? "";
      _outputMap = outputValue.toDecodedMap.toAlphabeticalOrder;
      _turnOutputIntoString(_outputMap ?? {});
    }
    update();
  }

  @override
  void beautify({bool isInput = true}) {
    final value = isInput ? inputController?.text : outputController?.text;
    final map = value?.toDecodedMap;
    final string = map?.toEncodedString;
    if (isInput) {
      inputController?.text = (string ?? "").splitToNewLine();
    } else {
      outputController?.text = (string ?? "").splitToNewLine();
    }
    update();
  }

  selectInputText() {
    inputController?.selection = TextSelection(
      baseOffset: 0,
      extentOffset: inputController?.text.length ?? 0,
    );
  }

  //

  @override
  void onInit() {
    scrollController= ScrollController();
    inputController = TextEditingController();
    outputController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    inputController?.dispose();
    outputController?.dispose();
    super.dispose();
  }

  @override
  void clear() {
    inputController?.clear();
    outputController?.clear();
  }
}
//
// final example = {
//   "name": "محمد",
//   "age": "25",
//   "street": "الشارع",
//   "city": "المدينة",
//   "country": "البلد"
// };
