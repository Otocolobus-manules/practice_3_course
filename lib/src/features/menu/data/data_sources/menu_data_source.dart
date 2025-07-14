import 'package:dio/dio.dart';

import 'package:practice_3_course/src/features/menu/models/dto/menu_item_dto.dart';


abstract interface class IMenuDataSource {
  Future<List<MenuItemDto>> fetchMenuItems(
      {required int categoryId, int page = 0, int limit = 20});
}

final class NetworkMenuDataSource implements IMenuDataSource {
  final Dio _dio;

  const NetworkMenuDataSource({required Dio dio}) : _dio = dio;

  @override
  Future<List<MenuItemDto>> fetchMenuItems(
      {required int categoryId, int page = 0, int limit = 20}) async {
    print('Fetching menu items from: ${_dio.options.baseUrl}/products');
    print('Parameters: category=$categoryId, page=$page, limit=$limit');
    try {
      final response = await _dio.get(
        '/products',
        queryParameters: {
          'category': '$categoryId',
          'page': '$page',
          'limit': '$limit',
        },
      );
      print('Menu items response status: ${response.statusCode}');
      print('Menu items response data: ${response.data}');

      final List<dynamic> data = response.data['data'];
      return data.map((item) => MenuItemDto.fromJson(item)).toList();
    } catch (e) {
      print('Error fetching menu items: $e');
      rethrow;
    }
  }
}
