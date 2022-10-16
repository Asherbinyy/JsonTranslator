part of 'imports_parts.dart';


AppBarTheme getAppBarTheme({
  required Color color,
  required Color innerColor,
  Brightness? statusBarBrightness,
  Brightness? statusBarIconBrightness,
}) {
  return AppBarTheme(
    elevation: 0,
    iconTheme: IconThemeData(
      color: innerColor,
    ),
    actionsIconTheme: IconThemeData(
      color: innerColor,
    ),
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: color,
      statusBarBrightness: statusBarBrightness,
      statusBarIconBrightness: statusBarIconBrightness,
    ),
    titleTextStyle: TextStyle(
      color: innerColor,
      fontSize: 18,
      fontWeight: FontWeight.w600,
    ),
    toolbarTextStyle: TextStyle(
      color: innerColor,
      fontSize: 18,
      fontWeight: FontWeight.w600,
    ),
     centerTitle: true,
    backgroundColor: color,
  );
}
