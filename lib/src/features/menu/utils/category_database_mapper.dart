import 'package:drift/drift.dart';

import 'package:practice_3_course/src/common/database/database.dart';
import 'package:practice_3_course/src/features/menu/models/dto/menu_category_dto.dart';


extension CategoryDatabaseMapper on MenuCategoryDto {
  MenuCategoriesCompanion toDatabase() {
    return MenuCategoriesCompanion.insert(
      id: Value(id),
      name: slug,
    );
  }
}
