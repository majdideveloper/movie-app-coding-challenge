import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/features/auth/bloc/auth_bloc.dart';
import 'package:movie_app/features/auth/view/screens/login_screen.dart';
import 'package:movie_app/features/movie/bloc/movie_bloc.dart';
import 'package:movie_app/features/movie/models/item_movie.dart';
import 'package:movie_app/features/movie/view/screens/detail_movie_screen.dart';
import 'package:movie_app/pallete.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    context.read<MovieBloc>().add(FetchAllMovies());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(listener: (context, state) {
      if (state is AuthInitial) {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const LoginScreen()),
          (route) => false,
        );
      }
    }, builder: (context, state) {
      return Scaffold(
        backgroundColor: Pallete.blackColor,
        appBar: AppBar(
          backgroundColor: Pallete.blackColor,
          title: const Text(
            'Movie App',
            style: TextStyle(color: Pallete.whiteColor),
          ),
          actions: [
            IconButton(
                onPressed: () => context.read<MovieBloc>().add(
                      FetchAllMovies(),
                    ),
                icon: const Icon(
                  Icons.refresh,
                  color: Pallete.greyColor,
                )),
            IconButton(
                onPressed: () => context.read<AuthBloc>().add(
                      AuthLogoutRequested(),
                    ),
                icon: const Icon(
                  Icons.logout,
                  color: Pallete.greyColor,
                ))
          ],
        ),
        body: BlocBuilder<MovieBloc, MovieState>(
          builder: (context, state) {
            if (state is MovieLoading) {
              return const Scaffold(
                body: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            } else if (state is MovieSuccess) {
              List<ItemMovie> listMovies = state.listMovies;

              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    final ItemMovie itemMovie = listMovies[index];
                    return Card(
                      color: Pallete.blackColor,
                      shadowColor: Pallete.redColor,
                      elevation: 10,
                      child: ListTile(
                        trailing: TextButton(
                          child: const Text(
                            "More Info",
                            style: TextStyle(color: Pallete.whiteColor),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailMovieScreen(
                                  imdbId: itemMovie.imdbId,
                                ),
                              ),
                            );
                          },
                        ),
                        title: Text(
                          itemMovie.title,
                          style: const TextStyle(color: Pallete.whiteColor),
                        ),
                        subtitle: Row(
                          children: [
                            Text(
                              "Rating:  ${itemMovie.imdbRating}",
                              style: const TextStyle(color: Pallete.greyColor),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              "votes: ${itemMovie.imdbVotes}",
                              style: const TextStyle(color: Pallete.greyColor),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, indexx) {
                    return const SizedBox(
                      height: 10,
                    );
                  },
                  itemCount: listMovies.length,
                ),
              );
            } else {
              return Scaffold(
                body: Center(
                  child: Text(
                      state is MovieDeatilFailure ? state.error : "No data"),
                ),
              );
            }
          },
        ),
      );
    });
  }
}
