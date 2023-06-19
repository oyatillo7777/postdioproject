import 'dart:math';

import 'package:hive_flutter/adapters.dart';
import 'package:postdioproject/all_trival/data/models/AllCountryModel.dart';

abstract class LocalDataSource {
  Future<List<AllCountryModel>> getPosts();

  Future<bool> setPosts(List<AllCountryModel> allCountryModel);

  Future<List<AllCountryModel>> getPokemons({required int page});

  Future<bool> hasData() async {
    final pokemonBox = Hive.box<AllCountryModel>(AllCountryModel.boxKey);
    return pokemonBox.length > 0;
  }
}

class LocalDataSourceImpl extends LocalDataSource {
  // final LocalDataSource localDataSource;
  //
  // LocalDataSourceImpl({required this.localDataSource});

  @override
  Future<List<AllCountryModel>> getPosts() async {
    try {
      final box = Hive.box("AllCountryModelAdapterBox");
      final allFromHive = box.values.toList().cast<AllCountryModel>() ?? [];
      return allFromHive;
    } catch (e) {
      return [];
    }
  }

  @override
  Future<bool> setPosts(List<AllCountryModel> allCountryModel) async {
    try {
      final box = Hive.box("AllCountryModelAdapterBox");
      await box.clear();
      box.addAll(allCountryModel);
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<List<AllCountryModel>> getPokemons({required int page}) async {
    final box = Hive.box<AllCountryModel>(AllCountryModel.boxKey);
    final totalBox = box.length;

    final start = (page - 1) * 20;
    final newAllCount = min(totalBox - start, 20);

    final result =
        List.generate(newAllCount, (index) => box.getAt(start + index))
            .whereType<AllCountryModel>()
            .toList();

    return result;
  }
}
