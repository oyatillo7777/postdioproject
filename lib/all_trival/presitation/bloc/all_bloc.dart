import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:postdioproject/all_trival/domain/usescase/all.dart';
import 'package:postdioproject/errors/failures.dart';
import '../../data/models/AllCountryModel.dart';

part 'all_event.dart';

part 'all_state.dart';

class AllBloc extends Bloc<AllEvent, AllState> {
  final AllCountryModelUsesCase allCountryModelUsesCase;

  AllBloc({required this.allCountryModelUsesCase}) : super(AllState.initial()) {
    on<GetAllCountryModelEvent>(getAllCountryModel);
  }

  FutureOr<void> getAllCountryModel(
      GetAllCountryModelEvent event, Emitter<AllState> emit) async {
    emit(state.asLoadingState());
    final result = await allCountryModelUsesCase(
        AllCountryModelParams(event.refresh, event.page));
    result.fold((left) {
      if (left is ServerFailure) {
        emit(state.asFailureState(left.message));
      } else if (left is LocalFailure) {
        emit(state.asFailureState(left.message));
      }
    }, (right) {
      emit(state.asSuccessState(right));
    });
  }
}
