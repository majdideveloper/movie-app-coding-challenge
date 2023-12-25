import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/commun/helper_padding.dart';
import 'package:movie_app/features/auth/bloc/auth_bloc.dart';
import 'package:movie_app/features/auth/view/widgets/gradient_button.dart';
import 'package:movie_app/features/auth/view/widgets/login_field.dart';
import 'package:movie_app/features/movie/view/screens/home_screen.dart';
import 'package:movie_app/pallete.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.blackColor,
      body: BlocConsumer<AuthBloc, AuthState>(listener: (context, state) {
        if (state is AuthFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.error),
              duration: const Duration(seconds: 2),
            ),
          );
        }
        if (state is AuthSuccess) {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => const HomeScreen()),
            (route) => false,
          );
        }
      }, builder: (context, state) {
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                xlargePaddingVert,
                const Text(
                  'Log In',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                    color: Pallete.whiteColor,
                  ),
                ),
                largePaddingVert,
                LoginField(
                  hintText: 'Email',
                  controller: emailController,
                ),
                mediumPaddingVert,
                LoginField(
                  hintText: 'Password',
                  controller: passwordController,
                ),
                largePaddingVert,
                GradientButton(
                    child: state is AuthLoading
                        ? const CircularProgressIndicator()
                        : const Text(
                            'Log In ',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 17,
                                color: Pallete.whiteColor),
                          ),
                    onPressed: () {
                      context.read<AuthBloc>().add(
                            AuthLoginRequested(
                              email: emailController.text.trim(),
                              password: passwordController.text.trim(),
                            ),
                          );
                    }),
              ],
            ),
          ),
        );
      }),
    );
  }
}
