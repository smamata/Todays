part of 'quotes_bloc.dart';

abstract class QuotesState extends Equatable {
  @override
  List<Object> get props => [];
}

class QuotesInitial extends QuotesState {}

class QuotesLoading extends QuotesState {
  QuotesLoading();
  @override
  List<Object> get props => [];
}

class QuotesLoaded extends QuotesState {
  final QuotesResponse model;
  QuotesLoaded(this.model);
  @override
  List<Object> get props => [model];
}

class QuotesFailed extends QuotesState {
  final String message;
  QuotesFailed(this.message);
  @override
  List<Object> get props => [message];
}
