// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AllCountryModel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AllCountryModelAdapter extends TypeAdapter<AllCountryModel> {
  @override
  final int typeId = 0;

  @override
  AllCountryModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AllCountryModel(
      name: fields[0] as Name?,
      independent: fields[1] as bool?,
      status: fields[2] as String?,
      capital: (fields[3] as List?)?.cast<String>(),
      region: fields[4] as String?,
      subregion: fields[5] as String?,
      languages: fields[6] as Languages?,
      landlocked: fields[7] as bool?,
      borders: (fields[8] as List?)?.cast<String>(),
      area: fields[9] as double?,
      flag: fields[10] as String?,
      population: fields[11] as int?,
      fifa: fields[12] as String?,
      timezones: (fields[13] as List?)?.cast<String>(),
      continents: (fields[14] as List?)?.cast<String>(),
      flags: fields[15] as Flags?,
      coatOfArms: fields[16] as CoatOfArms?,
      startOfWeek: fields[17] as String?,
      capitalInfo: fields[18] as CapitalInfo?,
      postalCode: fields[19] as PostalCode?,
    );
  }

  @override
  void write(BinaryWriter writer, AllCountryModel obj) {
    writer
      ..writeByte(20)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.independent)
      ..writeByte(2)
      ..write(obj.status)
      ..writeByte(3)
      ..write(obj.capital)
      ..writeByte(4)
      ..write(obj.region)
      ..writeByte(5)
      ..write(obj.subregion)
      ..writeByte(6)
      ..write(obj.languages)
      ..writeByte(7)
      ..write(obj.landlocked)
      ..writeByte(8)
      ..write(obj.borders)
      ..writeByte(9)
      ..write(obj.area)
      ..writeByte(10)
      ..write(obj.flag)
      ..writeByte(11)
      ..write(obj.population)
      ..writeByte(12)
      ..write(obj.fifa)
      ..writeByte(13)
      ..write(obj.timezones)
      ..writeByte(14)
      ..write(obj.continents)
      ..writeByte(15)
      ..write(obj.flags)
      ..writeByte(16)
      ..write(obj.coatOfArms)
      ..writeByte(17)
      ..write(obj.startOfWeek)
      ..writeByte(18)
      ..write(obj.capitalInfo)
      ..writeByte(19)
      ..write(obj.postalCode);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AllCountryModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PostalCodeAdapter extends TypeAdapter<PostalCode> {
  @override
  final int typeId = 1;

  @override
  PostalCode read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PostalCode(
      format: fields[0] as String?,
      regex: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, PostalCode obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.format)
      ..writeByte(1)
      ..write(obj.regex);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PostalCodeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CapitalInfoAdapter extends TypeAdapter<CapitalInfo> {
  @override
  final int typeId = 2;

  @override
  CapitalInfo read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CapitalInfo(
      latlng: (fields[0] as List?)?.cast<double>(),
    );
  }

  @override
  void write(BinaryWriter writer, CapitalInfo obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.latlng);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CapitalInfoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CoatOfArmsAdapter extends TypeAdapter<CoatOfArms> {
  @override
  final int typeId = 3;

  @override
  CoatOfArms read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CoatOfArms(
      png: fields[0] as String?,
      svg: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, CoatOfArms obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.png)
      ..writeByte(1)
      ..write(obj.svg);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CoatOfArmsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class FlagsAdapter extends TypeAdapter<Flags> {
  @override
  final int typeId = 4;

  @override
  Flags read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Flags(
      png: fields[0] as String?,
      svg: fields[1] as String?,
      alt: fields[2] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Flags obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.png)
      ..writeByte(1)
      ..write(obj.svg)
      ..writeByte(2)
      ..write(obj.alt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FlagsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class LanguagesAdapter extends TypeAdapter<Languages> {
  @override
  final int typeId = 5;

  @override
  Languages read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Languages(
      spa: fields[0] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Languages obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.spa);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LanguagesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class NameAdapter extends TypeAdapter<Name> {
  @override
  final int typeId = 6;

  @override
  Name read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Name(
      common: fields[0] as String?,
      official: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Name obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.common)
      ..writeByte(1)
      ..write(obj.official);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NameAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
