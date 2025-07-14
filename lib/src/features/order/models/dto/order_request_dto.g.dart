// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderRequestDto _$OrderRequestDtoFromJson(Map<String, dynamic> json) =>
    OrderRequestDto(
      positions: Map<String, int>.from(json['positions'] as Map),
      token: json['token'] as String,
    );

Map<String, dynamic> _$OrderRequestDtoToJson(OrderRequestDto instance) =>
    <String, dynamic>{'positions': instance.positions, 'token': instance.token};
