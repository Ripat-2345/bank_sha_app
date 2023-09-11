import 'package:bank_sha_app/shared/theme.dart';
import 'package:bank_sha_app/ui/widgets/buttons.dart';
import 'package:bank_sha_app/ui/widgets/data_provider_item.dart';
import 'package:flutter/material.dart';

class DataProviderPage extends StatelessWidget {
  const DataProviderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Beli Data"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 24,
          top: 15,
          right: 24,
          bottom: 30,
        ),
        child: Stack(
          children: [
            ListView(
              children: [
                Text(
                  "From Wallet",
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
                          "Balance: Rp 180.000.000,-",
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
                  "Select Provider",
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
                const SizedBox(height: 14),
                const DataProviderItem(
                  name: "Telkomsel",
                  imgUrl: "assets/images/img_provider_telkomsel.png",
                  isSelected: true,
                ),
                const DataProviderItem(
                  name: "Indosat Ooredoo",
                  imgUrl: "assets/images/img_provider_indosat.png",
                ),
                const DataProviderItem(
                  name: "Singtel ID",
                  imgUrl: "assets/images/img_provider_singtel.png",
                ),
                const SizedBox(height: 40),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: CustomFilledButton(
                title: "Continue",
                onPressed: () {
                  Navigator.pushNamed(context, "/data-package");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
