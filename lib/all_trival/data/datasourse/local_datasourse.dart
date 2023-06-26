import 'dart:math';
import 'package:hive_flutter/adapters.dart';
import 'package:postdioproject/all_trival/data/models/AllCountryModel.dart';

abstract class LocalDataSource {
  // Future<List<AllCountryModel>> getPosts();

  Future<bool> setPosts(List<AllCountryModel> allCountryModel);

  Future<List<AllCountryModel>> getPage({required int page});

  Future<bool> hasData();
}

class LocalDataSourceImpl extends LocalDataSource {
  // final LocalDataSource localDataSource;
  //
  // LocalDataSourceImpl({required this.localDataSource});

  //@override
  // Future<List<AllCountryModel>> getPosts() async {
  //   try {
  //     final box = Hive.box("AllCountryModelAdapterBox");
  //     final allFromHive = box.values.toList().cast<AllCountryModel>() ?? [];
  //     return allFromHive;
  //   } catch (e) {
  //     return [];
  //   }
  // }
  Future<List<AllCountryModel>> getPage({required int page}) async {
    try {
      final box = Hive.box<AllCountryModel>("AllCountryModelAdapterBox");
      final totalBox = box.length;

      if (totalBox > 0) {
        final start = (page) * 20;
        final newAllCount = min(totalBox - start, 20);

        if (newAllCount > 0) {
          final result =
              List.generate(newAllCount, (index) => box.getAt(start + index))
                  .whereType<AllCountryModel>()
                  .toList();
          return result;
        }
      }
      return [];
    } catch (e) {
      return [];
    }
  }

  @override
  Future<bool> setPosts(List<AllCountryModel> allCountryModel) async {
    try {
      final box = Hive.box<AllCountryModel>("AllCountryModelAdapterBox");
      await box.clear();
      box.addAll(allCountryModel);
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<bool> hasData() async {
    try {
      final box = Hive.box<AllCountryModel>("AllCountryModelAdapterBox");
      return box.isNotEmpty;
    } catch (e) {
      return false;
    }
  }
}
