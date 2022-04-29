
import 'package:json_annotation/json_annotation.dart';
part 'covid_user.g.dart';

@JsonSerializable()
class CovidUser {
  String omang;
  String name;
  String email;
  String phoneNumber;
  String physicalAddress;
  String city;
  String ward;
  String district;

  CovidUser({
    required this.omang,
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.physicalAddress,
    required this.city,
    required this.ward,
    required this.district,
});

  factory CovidUser.fromJson(Map<String, dynamic> json) => _$CovidUserFromJson(json);
  Map<String, dynamic> toJson() => _$CovidUserToJson(this);
}

