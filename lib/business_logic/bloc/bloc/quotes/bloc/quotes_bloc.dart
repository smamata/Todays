import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:todays/data/quotes_model.dart';
import 'package:todays/repo/quotes_repo.dart';

part 'quotes_event.dart';
part 'quotes_state.dart';

class QuotesBloc extends Bloc<QuotesEvent, QuotesState> {
  final QuotesRepo _quotesRepo;
  QuotesBloc(this._quotesRepo) : super(QuotesInitial()) {
    on<GetQuotes>((event, emit) async {
      emit(QuotesLoading());
      try {
        final response = await _quotesRepo.fetchQuotes();
        if (response.quotes!.isEmpty) {
          emit(QuotesLoaded(response));
        } else {
          emit(QuotesFailed("Failed"));
        }
      } catch (e) {
        emit(QuotesFailed(e.toString()));
      }
    });
  }
}
