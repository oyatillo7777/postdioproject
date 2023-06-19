import 'package:dartz/dartz.dart';
import 'package:postdioproject/errors/failures.dart';

import '../../data/models/AllCountryModel.dart';

abstract class AllCountryModelRepository {
  Future<Either<Failure, List<AllCountryModel>>> getAllCountryModel(
      bool refresh);

  Future<Either<Failure, List<AllCountryModel>>> getAllCountryModelPage(
      {required int page});
}
