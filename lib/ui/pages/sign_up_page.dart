import 'package:bank_sha_app/blocs/auth/auth_bloc.dart';
import 'package:bank_sha_app/models/sign_up_form_model.dart';
import 'package:bank_sha_app/shared/shared_method.dart';
import 'package:bank_sha_app/ui/pages/sign_up_set_profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../shared/theme.dart';
import '../widgets/buttons.dart';
import '../widgets/forms.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool validate() {
    if (nameController.text.isEmpty ||
        emailController.text.isEmpty ||
        passwordController.text.isEmpty) {
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthFailed) {
            showCustomSnackbar(context, state.e);
          }

          if (state is AuthCheckEmailSuccess) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SignUpSetProfilePage(
                  data: SignUpFormModel(
                    name: nameController.text,
                    email: emailController.text,
                    password: passwordController.text,
                  ),
                ),
              ),
            );
          }
        },
        builder: (context, state) {
          if (state is AuthLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          return ListView(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            children: [
              Container(
                margin: const EdgeInsets.only(top: 100, bottom: 100),
                width: 100,
                height: 50,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/img_logo_light.png"),
                  ),
                ),
              ),
              Text(
                "Join Us to Unlock\nYour Growth",
                style: blackTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: semiBold,
                ),
              ),
              const SizedBox(height: 30),
              Container(
                padding: const EdgeInsets.all(22),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: whiteColor,
                ),
                child: Column(
                  children: [
                    // ! NOTE: Full Name Input
                    CustomFormField(
                      title: "Full Name",
                      controller: nameController,
                    ),
                    const SizedBox(height: 16),
                    // ! NOTE: Email Input
                    CustomFormField(
                      title: "Email Address",
                      controller: emailController,
                    ),
                    const SizedBox(height: 16),
                    // ! NOTE: Password Input
                    CustomFormField(
                      title: "Password",
                      obscureText: true,
                      controller: passwordController,
                    ),
                    const SizedBox(height: 30),
                    CustomFilledButton(
                      title: "Continue",
                      onPressed: () {
                        if (validate()) {
                          context.read<AuthBloc>().add(
                                AuthCheckEmail(emailController.text),
                              );
                        } else {
                          showCustomSnackbar(
                              context, "Semua field harus di isi!");
                        }
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50),
              CustomTextButton(
                title: "Sign In",
                onPressed: () {
                  Navigator.pushNamed(context, '/sign-in');
                },
              ),
              const SizedBox(height: 20),
            ],
          );
        },
      ),
    );
  }
}
