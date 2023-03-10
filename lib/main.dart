import 'package:bank_sha_app/blocs/auth/auth_bloc.dart';

import '/ui/pages/home_page.dart';
import '/ui/pages/sign_up_success_page.dart';
import '/ui/pages/sign_up_set_ktp_page.dart';
import '/ui/pages/onboarding_page.dart';
import '/ui/pages/sign_in_page.dart';
import '/ui/pages/sign_up_set_profile_page.dart';
import '/ui/pages/splash_page.dart';
import '/ui/pages/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AuthBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const SplashPage(),
          '/onboarding': (context) => const OnboardingPage(),
          '/sign-in': (context) => const SignInPage(),
          '/sign-up': (context) => const SignUpPage(),
          '/sign-up-success': (context) => const SignUpSuccessPage(),
          '/home': (context) => const HomePage(),
        },
      ),
    );
  }
}
