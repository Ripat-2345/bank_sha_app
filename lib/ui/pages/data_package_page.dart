import 'package:bank_sha_app/shared/theme.dart';
import 'package:bank_sha_app/ui/widgets/buttons.dart';
import 'package:bank_sha_app/ui/widgets/forms.dart';
import 'package:bank_sha_app/ui/widgets/package_item.dart';
import 'package:flutter/material.dart';

class DataPackagePage extends StatelessWidget {
  const DataPackagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Paket Data"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 24,
          top: 20,
          right: 24,
          bottom: 30,
        ),
        child: Stack(
          children: [
            ListView(
              children: [
                Text(
                  "Phone Number",
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
                const SizedBox(height: 14),
                const CustomFormField(
                  title: "+628",
                  isShowTitle: false,
                ),
                const SizedBox(height: 40),
                Text(
                  "Select Package",
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
                const SizedBox(height: 14),
                const Wrap(
                  alignment: WrapAlignment.spaceAround,
                  spacing: 20,
                  runSpacing: 20,
                  children: [
                    PackageItem(
                      amount: 10,
                      price: 1000000,
                      isSelected: true,
                    ),
                    PackageItem(
                      amount: 25,
                      price: 2200000,
                    ),
                    PackageItem(
                      amount: 40,
                      price: 3300000,
                    ),
                    PackageItem(
                      amount: 75,
                      price: 4500000,
                    ),
                  ],
                ),
                const SizedBox(height: 60),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: CustomFilledButton(
                title: "Continue",
                onPressed: () async {
                  if (await Navigator.pushNamed(context, "/pin") == true) {
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      "/data-success",
                      (route) => false,
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
