// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ItemMovie {
  final String imdbId;
  final String title;
  final String imdbRating;
  final String imdbVotes;

  ItemMovie({
    required this.imdbId,
    required this.title,
    required this.imdbRating,
    required this.imdbVotes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imdbId': imdbId,
      'title': title,
      'imdbRating': imdbRating,
      'imdbVotes': imdbVotes,
    };
  }

  factory ItemMovie.fromMap(Map<String, dynamic> map) {
    return ItemMovie(
      imdbId: map['imdbId'] as String,
      title: map['title'] as String,
      imdbRating: map['imdbRating'] as String,
      imdbVotes: map['imdbVotes'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ItemMovie.fromJson(String source) =>
      ItemMovie.fromMap(json.decode(source) as Map<String, dynamic>);
}
