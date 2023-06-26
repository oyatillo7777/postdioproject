part of 'all_bloc.dart';

@immutable
abstract class AllEvent {}

class GetAllCountryModelEvent extends AllEvent {
  final bool refresh;
  final int page;

  GetAllCountryModelEvent(this.refresh, this.page);
}


