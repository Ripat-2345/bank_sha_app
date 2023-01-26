import 'package:bank_sha_app/ui/pages/sign_in_page.dart';
import 'package:flutter/material.dart';

import '../../shared/theme.dart';
import '../widgets/buttons.dart';
import '../widgets/forms.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: ListView(
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
                const CustomFormField(
                  title: "Full Name",
                ),
                const SizedBox(height: 16),
                // ! NOTE: Email Input
                const CustomFormField(
                  title: "Email Address",
                ),
                const SizedBox(height: 16),
                // ! NOTE: Password Input
                const CustomFormField(
                  title: "Password",
                  obscureText: true,
                ),
                const SizedBox(height: 30),
                CustomFilledButton(
                  title: "Continue",
                  onPressed: () {
                    Navigator.pushNamed(context, '/sign-up-set-profile');
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
      ),
    );
  }
}
