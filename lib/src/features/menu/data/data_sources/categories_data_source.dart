import 'package:dio/dio.dart';

import 'package:practice_3_course/src/features/menu/models/dto/menu_category_dto.dart';


abstract interface class ICategoriesDataSource {
  Future<List<MenuCategoryDto>> fetchCategories();
}

final class NetworkCategoriesDataSource implements ICategoriesDataSource {
  final Dio _dio;

  const NetworkCategoriesDataSource({required Dio dio}) : _dio = dio;

  @override
  Future<List<MenuCategoryDto>> fetchCategories() async {
    print('Fetching categories from: ${_dio.options.baseUrl}/products/categories');
    try {
      final response = await _dio.get('/products/categories');
      print('Categories response status: ${response.statusCode}');
      print('Categories response data: ${response.data}');

      final List<dynamic> categories = response.data['data'];
      return categories
          .map((category) => MenuCategoryDto.fromJson(category))
          .toList();
    } catch (e) {
      print('Error fetching categories: $e');
      rethrow;
    }
  }
}
