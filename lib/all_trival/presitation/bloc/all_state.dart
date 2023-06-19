part of 'all_bloc.dart';

@immutable
enum AllStateStatus {
  initial,
  loading,
  success,
  failure,
}

class AllState {
  final AllStateStatus status;
  final Failure? error;
  final String? massage;
  final List<AllCountryModel>? data;
  int page = 1;

  AllState._(
      {this.status = AllStateStatus.initial,
      this.error,
      this.massage,
      this.data,
      this.page = 1,
      });

  AllState.initial() : this._();

  AllState asLoadingState() {
    return copyWith(status: AllStateStatus.loading);
  }

  AllState asSuccessState(List<AllCountryModel> data) {
    if (data.isNotEmpty ?? false) {
      page += 1;
    }
    return copyWith(status: AllStateStatus.success, data: data);
  }

  AllState asFailureState(String massage) {
    return copyWith(status: AllStateStatus.failure, error: error);
  }

  AllState copyWith({
    AllStateStatus? status,
    Failure? error,
    String? massage,
    List<AllCountryModel>? data,
  }) {
    return AllState._(
      status: status ?? this.status,
      error: error ?? this.error,
      page: page,
      data: data,
      massage: massage,
    );
  }
}
