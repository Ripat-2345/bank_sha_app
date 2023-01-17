import 'package:bank_sha_app/shared/theme.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

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
            "Sign In &\nGrow Your Finance",
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
              // ! NOTE: Email Input
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Email Address",
                      style: blackTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                        contentPadding: const EdgeInsets.all(12),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                // ! NOTE: Password Input
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Password",
                      style: blackTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                        contentPadding: const EdgeInsets.all(12),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Forgot Password",
                    style: blueTextStyle,
                  ),
                ),
                const SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: purpleColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(56),
                      ),
                    ),
                    child: Text(
                      "Sign In",
                      style: whiteTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 24,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignInPage(),
                        ),
                      );
                    },
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(0),
                    ),
                    child: Text(
                      "Create New Account",
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
