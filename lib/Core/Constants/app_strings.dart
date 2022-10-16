class AppString {
  static const String appName = "Json Translator";
  static const String appVersion = "1.0.0";
  static const String appBuildNumber = "1";
  static const String appDescription = "Translate Json to any language";
  static const String appAuthor = "Sherbini";

  static const String jsonExample =
      "Ex: \n {\n \"key1\":\"value1\",\n \"key2\":\"value2\"\n}";
  static const String jsonExampleHeader =
      "Inserted Json data must be in this format :";
  static const List<String> jsonExampleInstruction = [
    "Insert your json data as example and make sure it starts with \" { \" and ends with \" } \" \n the last key value doesn't contain comma \",\""
        "\n - Doesn't contain comments in between as : \" // \" or any other characters like  \",\" or \";\" ",
    "Doesn't contain any spaces between the keys and values",
    "Select your language",
    "Click on translate button",
    "Copy the translated json data",
    "Paste it in your project",
  ];

  /// review later to add more
  static const String appAuthorEmail = "Flutter Demo";
  static const String appAuthorWebsite = "Flutter Demo";
  static const String appLicense = "Flutter Demo";
  static const String appLicenseUrl = "Flutter Demo";
  static const String appPrivacyPolicyUrl = "Flutter Demo";
  static const String appTermsOfServiceUrl = "Flutter Demo";
}
