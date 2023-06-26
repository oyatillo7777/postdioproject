import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:postdioproject/all_trival/domain/repositories/repositories.dart';
import 'package:postdioproject/errors/failures.dart';
import 'package:postdioproject/usescases/usescase.dart';

import '../../data/models/AllCountryModel.dart';

class AllCountryModelUsesCase
    extends UseCase<List<AllCountryModel>, AllCountryModelParams> {
  final AllCountryModelRepository allCountryModelRepository;

  AllCountryModelUsesCase({required this.allCountryModelRepository});

  @override
  Future<Either<Failure, List<AllCountryModel>>> call(
      AllCountryModelParams params) {
    return allCountryModelRepository.getAllCountryModel(
        params.refresh, params.page);
  }
}

class AllCountryModelParams extends Equatable {
  final bool refresh;
  final int page;

  const AllCountryModelParams(this.refresh, this.page);

  @override
  List<Object?> get props => [refresh, page];
}
