import 'package:flutter/material.dart';

import 'package:practice_3_course/src/localization/app_localizations.dart';


extension ContextExtensions on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this)!;
  TextTheme get textTheme => Theme.of(this).textTheme;
  MediaQueryData get mediaQuery => MediaQuery.of(this);
  ScaffoldMessengerState get scaffoldMessenger => ScaffoldMessenger.of(this);
  NavigatorState get navigator => Navigator.of(this);
}
