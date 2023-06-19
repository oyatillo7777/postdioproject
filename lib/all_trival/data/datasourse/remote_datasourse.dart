import 'package:dio/dio.dart';
import '../models/AllCountryModel.dart';

abstract class RemoteDataSource {
  Future<List<AllCountryModel>> getPosts();
}

class RemoteDataSourceImpl extends RemoteDataSource {
  final Dio dio;

  RemoteDataSourceImpl({required this.dio});

  @override
  Future<List<AllCountryModel>> getPosts() async {
    var result = await dio.get("https://restcountries.com/v3.1/all");
    return listFromJson(result.data);
  }
}
