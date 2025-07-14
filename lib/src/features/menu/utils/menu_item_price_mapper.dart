import 'package:practice_3_course/src/common/database/database.dart';
import 'package:practice_3_course/src/features/menu/models/dto/menu_item_dto.dart';


extension MenuItemPriceMapper on MenuItemDto {
  List<MenuItemPricesCompanion> toDatabasePrices() {
    return prices.map((price) {
      return MenuItemPricesCompanion.insert(
        itemId: id,
        currency: price['currency'] as String,
        value: double.parse(price['value'] as String),
      );
    }).toList();
  }
}
