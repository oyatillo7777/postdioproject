part of 'all_bloc.dart';

@immutable
abstract class AllEvent {}

class GetAllCountryModelEvent extends AllEvent {
  final bool refresh;

  GetAllCountryModelEvent(this.refresh);
}

class GetAllCountryModelPageEvent extends AllEvent {

}
