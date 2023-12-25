import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/features/movie/models/item_detail_movie.dart';
import 'package:movie_app/features/movie/models/item_movie.dart';
import 'package:movie_app/features/movie/repository/movie_repository.dart';

part 'movie_event.dart';
part 'movie_state.dart';

class MovieBloc extends Bloc<MovieEvent, MovieState> {
  final MovieRepository movieRepository;
  MovieBloc(
    this.movieRepository,
  ) : super(MovieInitial()) {
    on<FetchAllMovies>((event, emit) async {
      emit(MovieLoading());
      try {
        List<ItemMovie> listMovies = await movieRepository.fetchMovies();
        emit(MovieSuccess(listMovies: listMovies));
      } catch (e) {
        emit(MovieFailure(error: e.toString()));
      }
    });

    on<FetchDetailMovie>((event, emit) async {
      emit(MovieDeatilLoading());
      //await Future.delayed(const Duration(seconds: 1));
      try {
        final imdbId = event.imdbId;
        ItemDetailMovie itemDetailMovie =
            await movieRepository.fetchDetailMovie(imdbId);
        emit(MovieDeatilSuccess(itemDetailMovie: itemDetailMovie));
      } catch (e) {
        emit(MovieDeatilFailure(error: e.toString()));
      }
    });
  }
}
