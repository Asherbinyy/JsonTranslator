import 'package:json_translator/Core/Utils/basic_extentions.dart';

class MapDataValidator {

  static String? validate (String? value){
    final map =  value?.toDecodedMap;
    if (map!.isNotEmpty) {
      return null;
    }
    else {
      return "Please make sure the inserted data is valid !";
    }
  }
  static bool validateMap(Map<String, dynamic> map) {
    final keys = map.keys;
    final values = map.values;
    final keysAreValid = keys.every((element) => _validateString(element));
    final valuesAreValid = values.every((element) => _validateString(element));
    return keysAreValid && valuesAreValid;
  }
  static bool _validateString(String value) {
    return value.isNotEmpty;
  }
}