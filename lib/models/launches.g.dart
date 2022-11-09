// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launches.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LaunchesList _$LaunchesListFromJson(Map<String, dynamic> json) => LaunchesList(
      launches: (json['launches'] as List<dynamic>?)
          ?.map((e) => LaunchModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LaunchesListToJson(LaunchesList instance) =>
    <String, dynamic>{
      'launches': instance.launches,
    };
