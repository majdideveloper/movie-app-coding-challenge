part of 'movie_bloc.dart';

@immutable
sealed class MovieState {}

final class MovieInitial extends MovieState {}

final class MovieLoading extends MovieState {}

final class MovieFailure extends MovieState {
  final String error;

  MovieFailure({required this.error});
}

final class MovieSuccess extends MovieState {
  final List<ItemMovie> listMovies;

  MovieSuccess({required this.listMovies});
}

final class MovieDeatilLoading extends MovieState {}

final class MovieDeatilSuccess extends MovieState {
  final ItemDetailMovie itemDetailMovie;

  MovieDeatilSuccess({required this.itemDetailMovie});
}

final class MovieDeatilFailure extends MovieState {
  final String error;

  MovieDeatilFailure({required this.error});
}
