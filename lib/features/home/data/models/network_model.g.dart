// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NetworkModel _$NetworkModelFromJson(Map<String, dynamic> json) => NetworkModel(
      id: json['id'] as int?,
      country: json['country'] == null
          ? null
          : CountryModel.fromJson(json['country'] as Map<String, dynamic>),
      name: json['name'] as String?,
      officialSite: json['officialSite'] as String?,
    );

Map<String, dynamic> _$NetworkModelToJson(NetworkModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'country': instance.country,
      'officialSite': instance.officialSite,
    };
