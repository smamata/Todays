import 'package:todays/data/data_provider.dart';
import 'package:todays/data/quotes_model.dart';

abstract class QuotesRepo {
  Future<QuotesResponse> fetchQuotes();
}

class RealQuotesRepo implements QuotesRepo {
  final APIProvider _apiProvider = APIProvider();
  @override
  Future<QuotesResponse> fetchQuotes() {
    return _apiProvider.fetchQuotes();
  }
}
