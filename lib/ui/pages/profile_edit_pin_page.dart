import 'package:bank_sha_app/shared/theme.dart';
import 'package:bank_sha_app/ui/widgets/buttons.dart';
import 'package:bank_sha_app/ui/widgets/forms.dart';
import 'package:flutter/material.dart';

class ProfileEditPinPage extends StatelessWidget {
  const ProfileEditPinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit PIN"),
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
                // ! NOTE: Old PIN Input
                const CustomFormField(
                  title: "Old PIN",
                ),
                const SizedBox(height: 16),

                // ! NOTE: New PIN Input
                const CustomFormField(
                  title: "New PIN",
                ),
                const SizedBox(height: 30),

                CustomFilledButton(
                  title: "Update Now",
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
