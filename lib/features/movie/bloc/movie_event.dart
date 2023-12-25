part of 'movie_bloc.dart';

@immutable
sealed class MovieEvent {}

final class FetchAllMovies extends MovieEvent {}

final class FetchDetailMovie extends MovieEvent {
  final String imdbId;

  FetchDetailMovie({required this.imdbId});
}
