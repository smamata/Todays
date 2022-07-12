import 'dart:convert';

import 'package:flutter/foundation.dart';

class QuotesResponse {
  List<Quotes>? quotes;
  int total;
  int skip;
  int limit;
  QuotesResponse({
    this.quotes,
    required this.total,
    required this.skip,
    required this.limit,
  });

  QuotesResponse copyWith({
    List<Quotes>? quotes,
    int? total,
    int? skip,
    int? limit,
  }) {
    return QuotesResponse(
      quotes: quotes ?? this.quotes,
      total: total ?? this.total,
      skip: skip ?? this.skip,
      limit: limit ?? this.limit,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    if (quotes != null) {
      result.addAll({'quotes': quotes!.map((x) => x.toMap()).toList()});
    }
    result.addAll({'total': total});
    result.addAll({'skip': skip});
    result.addAll({'limit': limit});

    return result;
  }

  factory QuotesResponse.fromMap(Map<String, dynamic> map) {
    return QuotesResponse(
      quotes: map['quotes'] != null
          ? List<Quotes>.from(map['quotes']?.map((x) => Quotes.fromMap(x)))
          : null,
      total: map['total']?.toInt() ?? 0,
      skip: map['skip']?.toInt() ?? 0,
      limit: map['limit']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory QuotesResponse.fromJson(String source) =>
      QuotesResponse.fromMap(json.decode(source));

  @override
  String toString() {
    return 'QuotesResponse(quotes: $quotes, total: $total, skip: $skip, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is QuotesResponse &&
        listEquals(other.quotes, quotes) &&
        other.total == total &&
        other.skip == skip &&
        other.limit == limit;
  }

  @override
  int get hashCode {
    return quotes.hashCode ^ total.hashCode ^ skip.hashCode ^ limit.hashCode;
  }
}

class Quotes {
  int id;
  String quote;
  String author;
  Quotes({
    required this.id,
    required this.quote,
    required this.author,
  });

  Quotes copyWith({
    int? id,
    String? quote,
    String? author,
  }) {
    return Quotes(
      id: id ?? this.id,
      quote: quote ?? this.quote,
      author: author ?? this.author,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'quote': quote});
    result.addAll({'author': author});

    return result;
  }

  factory Quotes.fromMap(Map<String, dynamic> map) {
    return Quotes(
      id: map['id']?.toInt() ?? 0,
      quote: map['quote'] ?? '',
      author: map['author'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Quotes.fromJson(String source) => Quotes.fromMap(json.decode(source));

  @override
  String toString() => 'Quotes(id: $id, quote: $quote, author: $author)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Quotes &&
        other.id == id &&
        other.quote == quote &&
        other.author == author;
  }

  @override
  int get hashCode => id.hashCode ^ quote.hashCode ^ author.hashCode;
}
