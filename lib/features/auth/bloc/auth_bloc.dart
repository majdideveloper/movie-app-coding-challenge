import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthLoginRequested>((event, emit) async {
      emit(AuthLoading());
      try {
        String email = event.email;
        String password = event.password;
        if (email.length < 5) {
          return emit(
              AuthFailure("your email need to be more then 5 character"));
        }

        if (password.length < 6) {
          return emit(
              AuthFailure("your password need be more then 6 character"));
        }
        await Future.delayed(
          const Duration(seconds: 2),
        );
        emit(AuthSuccess(uid: email));
      } catch (e) {
        return emit(AuthFailure(e.toString()));
      }
    });
    on<AuthLogoutRequested>((event, emit) {
      return emit(AuthInitial());
    });
  }
}
