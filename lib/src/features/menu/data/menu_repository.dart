import 'package:dio/dio.dart';

import 'package:practice_3_course/src/features/menu/models/dto/menu_item_dto.dart';
import 'package:practice_3_course/src/features/menu/models/menu_category.dart';
import 'package:practice_3_course/src/features/menu/models/menu_item.dart';
import 'package:practice_3_course/src/features/menu/utils/menu_items_mapper.dart';
import 'package:practice_3_course/src/features/menu/data/data_sources/menu_data_source.dart';


abstract interface class IMenuRepository {
  Future<List<MenuItem>> loadMenuItems(
      {required MenuCategory category, int page = 0, int limit = 25});
}

final class MenuRepository implements IMenuRepository {
  final IMenuDataSource _networkMenuDataSource;

  const MenuRepository({
    required IMenuDataSource networkMenuDataSource,
  }) : _networkMenuDataSource = networkMenuDataSource;

  @override
  Future<List<MenuItem>> loadMenuItems(
      {required MenuCategory category, int page = 0, int limit = 25}) async {
    var dtos = <MenuItemDto>[];
    try {
      dtos = await _networkMenuDataSource.fetchMenuItems(
          categoryId: category.id, page: page, limit: limit);
    } on DioException catch (e) {
      print('DioException in loadMenuItems: ${e.message}');
      print('Response: ${e.response?.data}');
      print('Status code: ${e.response?.statusCode}');

      if (e.message?.contains('XMLHttpRequest') == true || 
          e.message?.contains('connection error') == true) {
        print('CORS error detected. This is likely a browser security restriction.');
        throw Exception('CORS error: Unable to access the API from browser. Please try running on mobile device or use a CORS proxy.');
      }
      
      throw Exception('Failed to load menu items: ${e.message}');
    } catch (e) {
      print('Unexpected error in loadMenuItems: $e');
      throw Exception('Failed to load menu items: $e');
    }
    return dtos.map((e) => e.toModel()).toList();
  }
}
