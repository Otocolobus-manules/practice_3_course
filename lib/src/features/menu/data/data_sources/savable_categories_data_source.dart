import 'package:drift/drift.dart';

import 'package:practice_3_course/src/common/database/database.dart';
import 'package:practice_3_course/src/features/menu/models/dto/menu_category_dto.dart';
import 'package:practice_3_course/src/features/menu/data/data_sources/categories_data_source.dart';
import 'package:practice_3_course/src/features/menu/utils/category_database_mapper.dart';


abstract interface class ISavableCategoriesDataSource
    implements ICategoriesDataSource {
  Future<void> saveCategories({required List<MenuCategoryDto> categories});
}

final class DbCategoriesDataSource implements ISavableCategoriesDataSource {
  final MenuDb _menuDb;

  const DbCategoriesDataSource({required MenuDb menuDb}) : _menuDb = menuDb;

  @override
  Future<List<MenuCategoryDto>> fetchCategories() async {
    final categories = await _menuDb.select(_menuDb.menuCategories).get();
    return List<MenuCategoryDto>.of(
      categories.map((category) => MenuCategoryDto.fromDatabase(category)),
    );
  }

  @override
  Future<void> saveCategories(
      {required List<MenuCategoryDto> categories}) async {
    await _menuDb.batch((batch) {
      for (final category in categories) {
        batch.insert(
          _menuDb.menuCategories,
          category.toDatabase(),
          mode: InsertMode.insertOrReplace,
        );
      }
    });
  }
}
