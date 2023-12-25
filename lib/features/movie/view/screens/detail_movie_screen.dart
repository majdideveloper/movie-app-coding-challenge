import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:movie_app/commun/helper_padding.dart';
import 'package:movie_app/features/movie/bloc/movie_bloc.dart';
import 'package:movie_app/features/movie/models/item_detail_movie.dart';
import 'package:movie_app/pallete.dart';

class DetailMovieScreen extends StatefulWidget {
  final String imdbId;
  const DetailMovieScreen({
    Key? key,
    required this.imdbId,
  }) : super(key: key);

  @override
  State<DetailMovieScreen> createState() => _DetailMovieScreenState();
}

class _DetailMovieScreenState extends State<DetailMovieScreen> {
  @override
  void initState() {
    context.read<MovieBloc>().add(FetchDetailMovie(imdbId: widget.imdbId));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieBloc, MovieState>(
      builder: (context, state) {
        if (state is MovieDeatilLoading) {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else if (state is MovieDeatilSuccess) {
          ItemDetailMovie itemDetailMovie = state.itemDetailMovie;
          return Scaffold(
              backgroundColor: Colors.black12,
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    Stack(children: [
                      Image.network(
                        itemDetailMovie.poster,
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: 500,
                      ),
                      Positioned(
                        top: 25,
                        left: 10,
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent.withOpacity(0.7),
                          radius: 25,
                          child: IconButton(
                              onPressed: () {
                                context.read<MovieBloc>().add(FetchAllMovies());
                                Navigator.pop(context);
                              },
                              icon: const Icon(
                                Icons.arrow_back,
                                color: Pallete.greyColor,
                              )),
                        ),
                      ),
                    ]),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            itemDetailMovie.title,
                            style: const TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "${itemDetailMovie.year} - ${itemDetailMovie.genre} - ${itemDetailMovie.runtime}",
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                          smallPaddingVert,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                itemDetailMovie.imdbRating,
                                style: const TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                ),
                              ),
                              RatingBarIndicator(
                                rating:
                                    double.parse(itemDetailMovie.imdbRating) /
                                        2,
                                itemBuilder: (context, index) => const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                itemCount: 5,
                                itemSize: 40.0,
                                direction: Axis.horizontal,
                              ),
                            ],
                          ),
                          smallPaddingVert,
                          Text(
                            itemDetailMovie.plot,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                          smallPaddingVert,
                          Row(
                            children: [
                              const Text(
                                "Release Date: ",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                itemDetailMovie.released,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          smallPaddingVert,
                          Row(
                            children: [
                              const Text(
                                "Director: ",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                itemDetailMovie.director,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ));
        } else {
          return Scaffold(
            body: Center(
              child:
                  Text(state is MovieDeatilFailure ? state.error : "No data"),
            ),
          );
        }
      },
    );
  }
}
