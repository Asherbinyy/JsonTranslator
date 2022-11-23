import 'dart:collection';
import 'dart:convert';
import 'package:json_translator/Core/Utils/utils.dart';

extension MapOp on Map<String, dynamic> {
  String  get toEncodedString {
    printDM("map is => $this \n encoded to String is => ${jsonEncode(this)}");
    return jsonEncode(this);
  }
  Map<String,dynamic> get toAlphabeticalOrder  {
       final sortedKeys = keys.toList(growable: false)..sort();
       final sortedMap = Map.fromEntries(sortedKeys.map((k) => MapEntry(k, this[k])));
   return sortedMap;
  }


}
extension StringOp on String {
  Map<String, dynamic> get toDecodedMap {
    Map<String, dynamic> returnedMap = {};
    try {
      printDM("string is => $this \n decoded to Map is => ${jsonDecode(this)}");
      returnedMap = jsonDecode(this);
    }
    catch (e){
      printDM("error in decoding string into map is => $e");
    }
    return returnedMap;
  }
  String splitToNewLine() {
   final splitBracket = split("{").join("{\n");
    final splitComma = splitBracket.split(",").join(",\n");
    final splitBracket2 = splitComma.split("}").join("\n}");
    return splitBracket2;
  }
}
extension BoolOp on bool {
   bool get  toggle => !this;
}