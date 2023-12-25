import 'dart:convert';
import 'dart:developer';

import 'package:movie_app/domain/movie_api.dart';
import 'package:movie_app/features/movie/models/item_detail_movie.dart';
import 'package:movie_app/features/movie/models/item_movie.dart';

class MovieRepository {
  Future<List<ItemMovie>> fetchMovies() async {
    List<ItemMovie> listMovies = [];
    try {
      final movieData = await MovieAPI.index();

      List<dynamic> moviesData = json.decode(movieData);

      listMovies = moviesData.map((movieData) {
        return ItemMovie(
          imdbId: movieData['imdbID'],
          title: movieData['Title'],
          imdbRating: movieData['imdbRating'],
          imdbVotes: movieData['imdbVotes'],
        );
      }).toList();

      log(listMovies.length.toString());

      listMovies.sort((a, b) {
        double ratingA = double.parse(a.imdbRating);
        double ratingB = double.parse(b.imdbRating);

        int ratingComparison = ratingB.compareTo(ratingA);

        if (ratingComparison == 0) {
          int votesA = int.parse(a.imdbVotes.replaceAll(',', ''));
          int votesB = int.parse(b.imdbVotes.replaceAll(',', ''));

          return votesB.compareTo(votesA);
        }

        return ratingComparison;
      });
    } catch (e) {
      log(e.toString());
    }
    return listMovies;
  }

  Future<ItemDetailMovie> fetchDetailMovie(String imdbId) async {
    final movieData = await MovieAPI.get(imdbId);

    final detailMovie = ItemDetailMovie.fromJson(jsonDecode(movieData));
    return detailMovie;
  }
}
