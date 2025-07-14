import 'package:dio/dio.dart';

import 'package:practice_3_course/src/features/menu/models/dto/menu_category_dto.dart';
import 'package:practice_3_course/src/features/menu/models/menu_category.dart';
import 'package:practice_3_course/src/features/menu/utils/category_mapper.dart';
import 'package:practice_3_course/src/features/menu/data/data_sources/categories_data_source.dart';


abstract interface class ICategoryRepository {
  Future<List<MenuCategory>> loadCategories();
}

final class CategoriesRepository implements ICategoryRepository {
  final ICategoriesDataSource _networkCategoriesDataSource;

  const CategoriesRepository({
    required ICategoriesDataSource networkCategoriesDataSource,
  }) : _networkCategoriesDataSource = networkCategoriesDataSource;

  @override
  Future<List<MenuCategory>> loadCategories() async {
    var dtos = <MenuCategoryDto>[];
    try {
      dtos = await _networkCategoriesDataSource.fetchCategories();
    } on DioException catch (e) {
      print('DioException in loadCategories: ${e.message}');
      print('Response: ${e.response?.data}');
      print('Status code: ${e.response?.statusCode}');
      
      // Проверяем, является ли это CORS ошибкой
      if (e.message?.contains('XMLHttpRequest') == true || 
          e.message?.contains('connection error') == true) {
        print('CORS error detected. This is likely a browser security restriction.');
        throw Exception('CORS error: Unable to access the API from browser. Please try running on mobile device or use a CORS proxy.');
      }
      
      throw Exception('Failed to load categories: ${e.message}');
    } catch (e) {
      print('Unexpected error in loadCategories: $e');
      throw Exception('Failed to load categories: $e');
    }
    return dtos.map((e) => e.toModel()).toList();
  }
}
