part of 'quotes_bloc.dart';

abstract class QuotesEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class GetQuotes extends QuotesEvent {
  GetQuotes();
  @override
  List<Object> get props => [];
}
