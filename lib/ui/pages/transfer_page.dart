import 'package:bank_sha_app/shared/theme.dart';
import 'package:bank_sha_app/ui/widgets/buttons.dart';
import 'package:bank_sha_app/ui/widgets/forms.dart';
import 'package:bank_sha_app/ui/widgets/transfer_recent_user_item.dart';
import 'package:bank_sha_app/ui/widgets/transfer_result_user_item.dart';
import 'package:flutter/material.dart';

class TransferPage extends StatelessWidget {
  const TransferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Transfer"),
      ),
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsetsDirectional.symmetric(
              horizontal: 24,
            ),
            children: [
              const SizedBox(height: 20),
              Text(
                "Search",
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
              const SizedBox(height: 14),
              const CustomFormField(
                title: "by username",
                isShowTitle: false,
              ),
              buildResult(),
              const SizedBox(
                height: 80,
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsets.only(bottom: 20),
              padding: const EdgeInsetsDirectional.symmetric(
                horizontal: 24,
              ),
              child: CustomFilledButton(
                title: "Continue",
                onPressed: () {
                  Navigator.pushNamed(context, '/transfer-amount');
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildRecentUsers() {
    return Container(
      margin: const EdgeInsets.only(
        top: 40,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recent Users",
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(height: 14),
          const TransferRecentUserItem(
            imageUrl: "assets/images/img_friend1.png",
            name: "Yoona Jie",
            username: "yoenaa",
            isVerified: true,
          ),
          const TransferRecentUserItem(
            imageUrl: "assets/images/img_friend2.png",
            name: "Jhoonineee",
            username: "JOhonee",
          ),
          const TransferRecentUserItem(
            imageUrl: "assets/images/img_friend3.png",
            name: "Mairreddd",
            username: "Mariiie",
          ),
        ],
      ),
    );
  }

  Widget buildResult() {
    return Container(
      margin: const EdgeInsets.only(
        top: 40,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Result",
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(height: 14),
          const Wrap(
            alignment: WrapAlignment.spaceBetween,
            spacing: 17,
            runSpacing: 17,
            children: [
              TransferResultUserItem(
                imageUrl: "assets/images/img_friend1.png",
                name: "Yoona Jie",
                username: "yoenaa",
                isVerified: true,
              ),
              TransferResultUserItem(
                imageUrl: "assets/images/img_friend2.png",
                name: "Jhoonineee",
                username: "JOhonee",
                isSelected: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
