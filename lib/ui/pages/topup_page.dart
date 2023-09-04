import 'package:bank_sha_app/shared/theme.dart';
import 'package:bank_sha_app/ui/widgets/bank_item.dart';
import 'package:bank_sha_app/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';

class TopupPage extends StatelessWidget {
  const TopupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Top Up"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          const SizedBox(height: 30),
          Text(
            "Wallet",
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Image.asset(
                "assets/images/img_wallet.png",
                width: 80,
              ),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "8008 2208 1996",
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    "8008 2208 1996",
                    style: greyTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 40),
          Text(
            "Select Bank",
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(height: 14),
          const BankItem(
            title: "BANK BCA",
            estimateTime: "50 mins",
            imageUrl: "assets/images/img_bank_bca.png",
            isSelected: true,
          ),
          const BankItem(
            title: "BANK BNI",
            estimateTime: "20 mins",
            imageUrl: "assets/images/img_bank_bni.png",
          ),
          const BankItem(
            title: "BANK MANDIRI",
            estimateTime: "10 mins",
            imageUrl: "assets/images/img_bank_mandiri.png",
          ),
          const BankItem(
            title: "BANK OCBC",
            estimateTime: "30 mins",
            imageUrl: "assets/images/img_bank_ocbc.png",
          ),
          const SizedBox(height: 12),
          CustomFilledButton(
            title: "Continue",
            onPressed: () {},
          ),
          const SizedBox(height: 57),
        ],
      ),
    );
  }
}
