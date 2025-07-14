// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get title => 'Кофейня';

  @override
  String price(Object price) {
    return '$price ₽';
  }

  @override
  String get yourOrder => 'Ваш заказ';

  @override
  String get orderSuccess => 'Заказ создан';

  @override
  String get orderFailure => 'Возникла ошибка при заказе';

  @override
  String get makeOrder => 'Оформить заказ';

  @override
  String get dataLoadFailure => 'Ошибка загрузки данных';
}
