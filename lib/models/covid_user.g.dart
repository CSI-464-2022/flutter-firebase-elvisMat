// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'covid_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CovidUser _$CovidUserFromJson(Map<String, dynamic> json) => CovidUser(
      omang: json['omang'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      phoneNumber: json['phoneNumber'] as String,
      physicalAddress: json['physicalAddress'] as String,
      city: json['city'] as String,
      ward: json['ward'] as String,
      district: json['district'] as String,
    );

Map<String, dynamic> _$CovidUserToJson(CovidUser instance) => <String, dynamic>{
      'omang': instance.omang,
      'name': instance.name,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'physicalAddress': instance.physicalAddress,
      'city': instance.city,
      'ward': instance.ward,
      'district': instance.district,
    };
