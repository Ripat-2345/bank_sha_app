import 'package:bank_sha_app/shared/shared_method.dart';
import 'package:bank_sha_app/shared/theme.dart';
import 'package:bank_sha_app/ui/widgets/buttons.dart';
import 'package:bank_sha_app/ui/widgets/forms.dart';
import 'package:flutter/material.dart';

class ProfileEditPage extends StatelessWidget {
  const ProfileEditPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Profile"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(height: 30),
          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
            ),
            child: Column(
              children: [
                // ! NOTE: User Name Input
                const CustomFormField(
                  title: "User Name",
                ),
                const SizedBox(height: 16),

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
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
