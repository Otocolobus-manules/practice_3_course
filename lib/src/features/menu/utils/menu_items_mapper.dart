import 'package:practice_3_course/src/features/menu/models/dto/menu_category_dto.dart';
import 'package:practice_3_course/src/features/menu/models/dto/menu_item_dto.dart';
import 'package:practice_3_course/src/features/menu/models/menu_item.dart';
import 'package:practice_3_course/src/features/menu/utils/category_mapper.dart';


extension MenuItemsMapper on MenuItemDto {
  MenuItem toModel() {
    final String rubPrice =
        prices.where((p) => p['currency'] == 'RUB').first['value'];

    return MenuItem(
      id: id,
      name: name,
      category: MenuCategoryDto.fromJson(category).toModel(),
      imageUrl: imageUrl,
      price: double.parse(rubPrice).round(),
    );
  }
}
