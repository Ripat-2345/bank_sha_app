import 'package:bank_sha_app/shared/theme.dart';
import 'package:bank_sha_app/ui/widgets/home_latest_transaction_item.dart';
import 'package:bank_sha_app/ui/widgets/home_service_item.dart';
import 'package:bank_sha_app/ui/widgets/home_tips_item.dart';
import 'package:bank_sha_app/ui/widgets/home_user_item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          buildProfile(context),
          buildWalletCard(),
          buildLevel(),
          buildServices(context),
          buildLatestTransactions(),
          buildSendAgain(),
          buildFriendlyTips(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: whiteColor,
        shape: const CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        notchMargin: 6,
        elevation: 0,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          backgroundColor: whiteColor,
          selectedItemColor: blueColor,
          unselectedItemColor: blackColor,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedLabelStyle: blueTextStyle.copyWith(
            fontSize: 10,
            fontWeight: medium,
          ),
          unselectedLabelStyle: blackTextStyle.copyWith(
            fontSize: 10,
            fontWeight: medium,
          ),
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icons/ic_overview.png",
                width: 20,
                color: blueColor,
              ),
              label: "Overview",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icons/ic_history.png",
                width: 20,
              ),
              label: "History",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icons/ic_statistic.png",
                width: 20,
              ),
              label: "Statistic",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icons/ic_reward.png",
                width: 20,
              ),
              label: "Reward",
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: purpleColor,
        child: Image.asset(
          "assets/icons/ic_plus_circle.png",
          width: 24,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget buildProfile(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Howdy,",
                style: greyTextStyle.copyWith(fontSize: 16),
              ),
              const SizedBox(height: 2),
              Text(
                "shaynahan",
                style: blackTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: semiBold,
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/profile');
            },
            child: Container(
              width: 60,
              height: 60,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/img_profile.png"),
                ),
              ),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 16,
                  height: 16,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: whiteColor,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.check_circle,
                      color: greenColor,
                      size: 14,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildWalletCard() {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      padding: const EdgeInsets.all(30),
      width: double.infinity,
      height: 220,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            "assets/images/img_bg_card.png",
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Shayna Hanna",
            style: whiteTextStyle.copyWith(
              fontSize: 18,
              fontWeight: medium,
            ),
          ),
          const SizedBox(height: 24),
          Text(
            "*** **** **** 1280",
            style: whiteTextStyle.copyWith(
              fontSize: 18,
              fontWeight: medium,
              letterSpacing: 6,
            ),
          ),
          const SizedBox(height: 24),
          Text(
            "Balance",
            style: whiteTextStyle,
          ),
          Text(
            "Rp 12.500",
            style: whiteTextStyle.copyWith(
              fontSize: 24,
              fontWeight: semiBold,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildLevel() {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: whiteColor,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Level 1",
                style: blackTextStyle.copyWith(
                  fontWeight: medium,
                ),
              ),
              const Spacer(),
              Text(
                "55%",
                style: greenTextStyle.copyWith(
                  fontWeight: semiBold,
                ),
              ),
              Text(
                "of Rp 20.000",
                style: blackTextStyle.copyWith(
                  fontWeight: semiBold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(55),
            child: LinearProgressIndicator(
              value: 0.55,
              valueColor: AlwaysStoppedAnimation(greenColor),
              backgroundColor: lightBackgroundColor,
              minHeight: 5,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildServices(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Do Something",
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(height: 14),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HomeServiceItem(
                iconUrl: "assets/icons/ic_topup.png",
                title: "Top Up",
                onTap: () {
                  Navigator.pushNamed(context, '/topup');
                },
              ),
              HomeServiceItem(
                iconUrl: "assets/icons/ic_send.png",
                title: "Send",
                onTap: () {
                  Navigator.pushNamed(context, "/transfer");
                },
              ),
              HomeServiceItem(
                iconUrl: "assets/icons/ic_withdraw.png",
                title: "Withdraw",
                onTap: () {},
              ),
              HomeServiceItem(
                iconUrl: "assets/icons/ic_more.png",
                title: "More",
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => const MoreDialog(),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildLatestTransactions() {
    return Container(
      margin: const EdgeInsets.only(
        top: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Latest Transactions",
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 14),
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
            ),
            child: const Column(
              children: [
                HomeLatestTransactionItem(
                  iconUrl: "assets/icons/ic_transaction_cat1.png",
                  title: "Top Up",
                  time: "Yesterday",
                  value: "+ 450.000",
                ),
                HomeLatestTransactionItem(
                  iconUrl: "assets/icons/ic_transaction_cat2.png",
                  title: "Cashback",
                  time: "Sep 11",
                  value: "+ 22.000",
                ),
                HomeLatestTransactionItem(
                  iconUrl: "assets/icons/ic_transaction_cat3.png",
                  title: "Withdraw",
                  time: "Sep 2",
                  value: "- 5.000",
                ),
                HomeLatestTransactionItem(
                  iconUrl: "assets/icons/ic_transaction_cat4.png",
                  title: "Transfer",
                  time: "Aug 27",
                  value: "- 123.500",
                ),
                HomeLatestTransactionItem(
                  iconUrl: "assets/icons/ic_transaction_cat5.png",
                  title: "Electric",
                  time: "Feb 18",
                  value: "- 12.300.000",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSendAgain() {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Send Again",
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(height: 14),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                HomeUserItem(
                  imageUrl: "assets/images/img_friend1.png",
                  username: "yuanita",
                ),
                HomeUserItem(
                  imageUrl: "assets/images/img_friend2.png",
                  username: "jani",
                ),
                HomeUserItem(
                  imageUrl: "assets/images/img_friend3.png",
                  username: "urip",
                ),
                HomeUserItem(
                  imageUrl: "assets/images/img_friend4.png",
                  username: "masa",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildFriendlyTips() {
    return Container(
      margin: const EdgeInsets.only(
        top: 30,
        bottom: 50,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Friendly Tips",
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(height: 14),
          const Wrap(
            spacing: 18,
            runSpacing: 18,
            children: [
              HomeTipsItem(
                imageUrl: "assets/images/img_tips1.png",
                title: "Best tips for using a credit card",
                url: "https://www.google.com",
              ),
              HomeTipsItem(
                imageUrl: "assets/images/img_tips2.png",
                title: "Spot the good pie of finance model",
                url: "https://www.google.com",
              ),
              HomeTipsItem(
                imageUrl: "assets/images/img_tips3.png",
                title: "Great hack to get better advices",
                url: "https://www.google.com",
              ),
              HomeTipsItem(
                imageUrl: "assets/images/img_tips4.png",
                title: "Save more penny buy this instead",
                url: "https://www.google.com",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MoreDialog extends StatelessWidget {
  const MoreDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.zero,
      alignment: Alignment.bottomCenter,
      content: Container(
        padding: const EdgeInsets.all(30),
        width: MediaQuery.of(context).size.width,
        height: 326,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: lightBackgroundColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Do More With Us",
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(height: 13),
            Wrap(
              spacing: MediaQuery.of(context).size.width / 10,
              runSpacing: 25,
              children: [
                HomeServiceItem(
                  iconUrl: "assets/icons/ic_product_data.png",
                  title: "Data",
                  onTap: () {
                    Navigator.pushNamed(context, "/data-provider");
                  },
                ),
                HomeServiceItem(
                  iconUrl: "assets/icons/ic_product_water.png",
                  title: "Water",
                  onTap: () {},
                ),
                HomeServiceItem(
                  iconUrl: "assets/icons/ic_product_stream.png",
                  title: "Stream",
                  onTap: () {},
                ),
                HomeServiceItem(
                  iconUrl: "assets/icons/ic_product_movie.png",
                  title: "Movie",
                  onTap: () {},
                ),
                HomeServiceItem(
                  iconUrl: "assets/icons/ic_product_food.png",
                  title: "Food",
                  onTap: () {},
                ),
                HomeServiceItem(
                  iconUrl: "assets/icons/ic_product_travel.png",
                  title: "Travel",
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
