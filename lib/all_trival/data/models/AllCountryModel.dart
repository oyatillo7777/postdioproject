import 'package:hive/hive.dart';

part 'AllCountryModel.g.dart';

List<AllCountryModel> listFromJson(dynamic txt) {
  return List<AllCountryModel>.from(txt.map((e) => AllCountryModel.fromJson(e)))
      .toList();
}

@HiveType(typeId: 0)
class AllCountryModel {
  static const String boxKey = 'item';

  AllCountryModel({
    this.name,
    this.independent,
    this.status,
    this.capital,
    this.region,
    this.subregion,
    this.languages,
    this.landlocked,
    this.borders,
    this.area,
    this.flag,
    this.population,
    this.fifa,
    this.timezones,
    this.continents,
    this.flags,
    this.coatOfArms,
    this.startOfWeek,
    this.capitalInfo,
    this.postalCode,
  });

  AllCountryModel.fromJson(dynamic json) {
    name = json['name'] != null ? Name.fromJson(json['name']) : null;
    independent = json['independent'];
    status = json['status'];
    capital = json['capital'] != null ? json['capital'].cast<String>() : [];
    region = json['region'];
    subregion = json['subregion'];
    languages = json['languages'] != null
        ? Languages.fromJson(json['languages'])
        : null;
    landlocked = json['landlocked'];
    borders = json['borders'] != null ? json['borders'].cast<String>() : [];
    area = json['area'];
    flag = json['flag'];
    population = json['population'];
    fifa = json['fifa'];
    timezones =
        json['timezones'] != null ? json['timezones'].cast<String>() : [];
    continents =
        json['continents'] != null ? json['continents'].cast<String>() : [];
    flags = json['flags'] != null ? Flags.fromJson(json['flags']) : null;
    coatOfArms = json['coatOfArms'] != null
        ? CoatOfArms.fromJson(json['coatOfArms'])
        : null;
    startOfWeek = json['startOfWeek'];
    capitalInfo = json['capitalInfo'] != null
        ? CapitalInfo.fromJson(json['capitalInfo'])
        : null;
    postalCode = json['postalCode'] != null
        ? PostalCode.fromJson(json['postalCode'])
        : null;
  }

  @HiveField(0)
  Name? name;
  @HiveField(1)
  bool? independent;
  @HiveField(2)
  String? status;
  @HiveField(3)
  List<String>? capital;
  @HiveField(4)
  String? region;
  @HiveField(5)
  String? subregion;
  @HiveField(6)
  Languages? languages;
  @HiveField(7)
  bool? landlocked;
  @HiveField(8)
  List<String>? borders;
  @HiveField(9)
  double? area;
  @HiveField(10)
  String? flag;
  @HiveField(11)
  int? population;
  @HiveField(12)
  String? fifa;
  @HiveField(13)
  List<String>? timezones;
  @HiveField(14)
  List<String>? continents;
  @HiveField(15)
  Flags? flags;
  @HiveField(16)
  CoatOfArms? coatOfArms;
  @HiveField(17)
  String? startOfWeek;
  @HiveField(18)
  CapitalInfo? capitalInfo;
  @HiveField(19)
  PostalCode? postalCode;
}

@HiveType(typeId: 1)
class PostalCode {
  PostalCode({
    this.format,
    this.regex,
  });

  PostalCode.fromJson(dynamic json) {
    format = json['format'];
    regex = json['regex'];
  }

  @HiveField(0)
  String? format;
  @HiveField(1)
  String? regex;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['format'] = format;
    map['regex'] = regex;
    return map;
  }
}

@HiveType(typeId: 2)
class CapitalInfo {
  CapitalInfo({
    this.latlng,
  });

  CapitalInfo.fromJson(dynamic json) {
    latlng = json['latlng'] != null ? json['latlng'].cast<double>() : [];
  }

  @HiveField(0)
  List<double>? latlng;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['latlng'] = latlng;
    return map;
  }
}

@HiveType(typeId: 3)
class CoatOfArms {
  CoatOfArms({
    this.png,
    this.svg,
  });

  CoatOfArms.fromJson(dynamic json) {
    png = json['png'];
    svg = json['svg'];
  }

  @HiveField(0)
  String? png;
  @HiveField(1)
  String? svg;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['png'] = png;
    map['svg'] = svg;
    return map;
  }
}

@HiveType(typeId: 4)
class Flags {
  Flags({
    this.png,
    this.svg,
    this.alt,
  });

  Flags.fromJson(dynamic json) {
    png = json['png'];
    svg = json['svg'];
    alt = json['alt'];
  }

  @HiveField(0)
  String? png;
  @HiveField(1)
  String? svg;
  @HiveField(2)
  String? alt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['png'] = png;
    map['svg'] = svg;
    map['alt'] = alt;
    return map;
  }
}

@HiveType(typeId: 5)
class Languages {
  Languages({
    this.spa,
  });

  Languages.fromJson(dynamic json) {
    spa = json['spa'];
  }

  @HiveField(0)
  String? spa;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['spa'] = spa;
    return map;
  }
}

@HiveType(typeId: 6)
class Name {
  Name({this.common, this.official});

  Name.fromJson(dynamic json) {
    common = json['common'];
    official = json['official'];
  }

  @HiveField(0)
  String? common;
  @HiveField(1)
  String? official;
}
