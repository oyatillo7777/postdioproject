import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:postdioproject/errors/failures.dart';

import '../../../usescases/usescase.dart';
import '../../data/models/AllCountryModel.dart';
import '../repositories/repositories.dart';

class GetAllCountryModel extends Equatable {
  final int page;

  GetAllCountryModel({required this.page });

  @override
  List<Object?> get props => [page];
}

class GetAllUseCase extends UseCase<List<AllCountryModel>, GetAllCountryModel> {
  GetAllUseCase(this.repository);

  final AllCountryModelRepository repository;

  @override
  Future<Either<Failure, List<AllCountryModel>>> call(
      GetAllCountryModel params) {
    return repository.getAllCountryModelPage(
        page: params.page);
  }
}
