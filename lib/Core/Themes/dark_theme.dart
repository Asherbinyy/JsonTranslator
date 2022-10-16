part of 'imports_themes.dart';
  final ThemeData _darkTheme = ThemeData(
  primarySwatch: Colors.deepOrange,
  accentColor: Colors.deepOrangeAccent,
  brightness: Brightness.dark,
  visualDensity: VisualDensity.adaptivePlatformDensity,
    /// app Bar
    appBarTheme: getAppBarTheme(
      color: AppColors.get.appBarColor,
      innerColor: AppColors.get.appBarColorInner,
      statusBarBrightness:  Brightness.dark,
      statusBarIconBrightness: Brightness.light,
    ),
    tooltipTheme:  TooltipThemeData(
      decoration: BoxDecoration(
        color: AppColors.get.primaryColor.withOpacity(0.4),
        borderRadius: BorderRadius.circular(10),
      ),
      enableFeedback: true,

      textStyle: TextStyle(
        color: AppColors.get.label,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    textTheme: TextTheme(
      bodyText2: TextStyle(
        color: AppColors.get.label,
      ),
    ),
);