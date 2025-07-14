import 'package:drift/drift.dart';

import 'package:practice_3_course/src/common/database/database.dart';
import 'package:practice_3_course/src/features/menu/models/dto/menu_item_dto.dart';


extension MenuItemDatabaseMapper on MenuItemDto {
  MenuItemsCompanion toDatabaseItem() {
    return MenuItemsCompanion.insert(
      id: Value(id),
      name: name,
      description: Value(description),
      imageUrl: Value(imageUrl),
      categoryId: category['id'] as int,
    );
  }
}
