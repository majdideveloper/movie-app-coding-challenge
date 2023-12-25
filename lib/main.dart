import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/domain/movie_api.dart';
import 'package:movie_app/features/auth/bloc/auth_bloc.dart';
import 'package:movie_app/features/auth/view/screens/login_screen.dart';
import 'package:movie_app/features/movie/bloc/movie_bloc.dart';
import 'package:movie_app/features/movie/repository/movie_repository.dart';
import 'package:movie_app/movie_bloc_observer.dart';
import 'package:movie_app/pallete.dart';

void main() {
  Bloc.observer = const MovieBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => AuthBloc(),
        ),
        BlocProvider<MovieBloc>(
          create: (context) => MovieBloc(MovieRepository()),
        ),
      ],
      child: MaterialApp(
        title: 'Movies App Coding Challenge',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Pallete.blackColor,
          primarySwatch: Colors.blue,
        ),
        home: const LoginScreen(),
      ),
    );
  }
}
