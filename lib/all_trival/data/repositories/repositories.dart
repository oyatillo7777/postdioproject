import 'package:dartz/dartz.dart';
import 'package:postdioproject/all_trival/data/datasourse/local_datasourse.dart';
import 'package:postdioproject/all_trival/data/datasourse/remote_datasourse.dart';
import 'package:postdioproject/all_trival/domain/repositories/repositories.dart';
import 'package:postdioproject/errors/failures.dart';
import 'package:postdioproject/network/network.dart';

import '../models/AllCountryModel.dart';

class AllCountryModelRepositoryImpl extends AllCountryModelRepository {
  final LocalDataSourceImpl localDataSourseImpl;
  final RemoteDataSourceImpl remoteDataSourseImpl;
  final NetworkInfo networkInfo;

  AllCountryModelRepositoryImpl(
      {required this.localDataSourseImpl,
      required this.remoteDataSourseImpl,
      required this.networkInfo});

  @override
  Future<Either<Failure, List<AllCountryModel>>> getAllCountryModel(
      bool refresh, int page) async {
    print(networkInfo.isConnected);
    if (await networkInfo.isConnected) {
      try {
        final result = await remoteDataSourseImpl.getPosts();
        localDataSourseImpl.setPosts(result);
        return Right(result);
      } on ServerFailure {
        return Left(ServerFailure("Serverda xatolik"));
      }
    } else {
      try {
        final result = await localDataSourseImpl.getPage(page: page);
        return Right(result);
      } on LocalFailure {
        return Left(LocalFailure("Ichki xatolik"));
      }
    }
  }
}
