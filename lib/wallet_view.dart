import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallet/_mock_data/mock.dart';
import 'package:wallet/utils/constants.dart';
import 'dart:ui';

import 'controllers/wallet_controller.dart';
import 'dart:ui';

class WalletPage extends StatefulWidget {
  const WalletPage({super.key});

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  final WalletController c = Get.put(WalletController());
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
              onPressed: () => {}, icon: const Icon(Icons.arrow_back_ios_new)),
          title: Container(
            child: const Text("Your Wallet"),
          ),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: size.width * 0.1),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DecoratedBox(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffCC7700),
                          blurRadius: 15,
                          spreadRadius: 5,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: size.width * 0.44,
                        height: size.width * 0.44,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          // borderRadius: BorderRadiusDirectional.circular(
                          //     size.width * 0.22),
                          color: kPrimaryColor,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                child: Text("${currentUserWallet.yourCoins}",
                                    style: TextStyle(
                                        fontSize: size.width * 0.12,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold))),
                            // SizedBox(height: size.width * 0.005),

                            SizedBox(height: size.width * 0.01),
                            Container(
                                child: Text(
                              "Your Coins",
                              style: TextStyle(
                                  fontSize: size.width * 0.04,
                                  color: Colors.white),
                            )),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.width * 0.1),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DecoratedBox(
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffCC7700),
                          blurRadius: 15,
                          spreadRadius: 3,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                    child: GestureDetector(
                      onTap: () {
                        ;
                      },
                      child: Container(
                        width: size.width * 0.55,
                        height: size.width * 0.15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(10),
                          color: kBackgroundColor,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                child: Text("Add Coins",
                                    style: TextStyle(
                                        fontSize: size.width * 0.05,
                                        color: Colors.black))),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.width * 0.05),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: size.width * 0.45,
                    height: size.width * 0.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(25),
                      color: kBackgroundColor,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            child: Text("Total Earnings",
                                style: TextStyle(
                                    fontSize: size.width * 0.05,
                                    color: Colors.black))),
                        SizedBox(height: size.width * 0.005),
                        Container(
                            child: Text("${currentUserWallet.totalEarnings}",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: size.width * 0.1,
                                    color: Colors.amber))),
                        SizedBox(height: size.width * 0.01),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.02,
                  ),
                  Container(
                    width: size.width * 0.45,
                    height: size.width * 0.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(25),
                      color: kBackgroundColor,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            child: Text("Total Spendings",
                                style: TextStyle(
                                    fontSize: size.width * 0.05,
                                    color: Colors.black))),
                        SizedBox(height: size.width * 0.005),
                        Container(
                            child: Text("${currentUserWallet.totalSpendings}",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: size.width * 0.1,
                                    color: Colors.amber))),
                        SizedBox(height: size.width * 0.01),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.width * 0.05),
              Row(
                children: [
                  SizedBox(
                    width: size.width * 0.05,
                  ),
                  Container(
                    // ignore: prefer_const_constructors
                    child: Text(
                      "Passbook",
                      style: const TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.width * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: size.width * 0.45,
                    height: size.width * 0.45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(25),
                      color: kBackgroundColor,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            child: Text("Coins",
                                style: TextStyle(
                                    fontSize: size.width * 0.06,
                                    color: Colors.black))),
                        SizedBox(height: size.width * 0.005),
                        Container(
                            child: Text("${currentUserWallet.coinsTimeSpent}",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: size.width * 0.15,
                                    color: Colors.amber))),
                        SizedBox(height: size.width * 0.01),
                        Container(
                            child: Text(
                          "Time Spent on app",
                          style: TextStyle(
                              fontSize: size.width * 0.04, color: Colors.black),
                        )),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.02,
                  ),
                  Container(
                    width: size.width * 0.45,
                    height: size.width * 0.45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(25),
                      color: kBackgroundColor,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            child: Text("Coins",
                                style: TextStyle(
                                    fontSize: size.width * 0.06,
                                    color: Colors.black))),
                        SizedBox(height: size.width * 0.005),
                        Container(
                            child: Text(
                                "${currentUserWallet.coinsDailyCheckIns}",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: size.width * 0.15,
                                    color: Colors.amber))),
                        SizedBox(height: size.width * 0.01),
                        Container(
                            child: Text(
                          "Daily Check-ins",
                          style: TextStyle(
                              fontSize: size.width * 0.04, color: Colors.black),
                        )),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.width * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: size.width * 0.45,
                    height: size.width * 0.45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(25),
                      color: kBackgroundColor,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            child: Text("Coins",
                                style: TextStyle(
                                    fontSize: size.width * 0.06,
                                    color: Colors.black))),
                        SizedBox(height: size.width * 0.005),
                        Container(
                            child: Text("${currentUserWallet.coinsVideoUpload}",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: size.width * 0.15,
                                    color: Colors.amber))),
                        SizedBox(height: size.width * 0.01),
                        Container(
                            child: Text(
                          "Video Upload",
                          style: TextStyle(
                              fontSize: size.width * 0.04, color: Colors.black),
                        )),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.02,
                  ),
                  Container(
                    width: size.width * 0.45,
                    height: size.width * 0.45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(25),
                      color: kBackgroundColor,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            child: Text("Coins",
                                style: TextStyle(
                                    fontSize: size.width * 0.06,
                                    color: Colors.black))),
                        SizedBox(height: size.width * 0.005),
                        Container(
                            child: Text("${currentUserWallet.coinsFromFans}",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: size.width * 0.15,
                                    color: Colors.amber))),
                        SizedBox(height: size.width * 0.01),
                        Container(
                            child: Text(
                          "From your fans",
                          style: TextStyle(
                              fontSize: size.width * 0.04, color: Colors.black),
                        )),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.width * 0.05),
              Row(
                children: [
                  SizedBox(
                    width: size.width * 0.05,
                  ),
                  Container(
                    // ignore: prefer_const_constructors
                    child: Text(
                      "Rewarding Actions",
                      style: const TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.width * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: size.width * 0.8,
                    height: size.width * 0.15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(7),
                      color: kBackgroundColor,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: size.width * 0.02,
                            ),
                            Container(
                              width: size.width * 0.11,
                              height: size.width * 0.11,
                              decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadiusDirectional.circular(
                                    size.width * 0.075),
                              ),
                              child: Center(
                                  child: Text(
                                "${currentUserWallet.coinsEveryTenMinutes}",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: size.width * 0.045),
                              )),
                            ),
                            SizedBox(
                              width: size.width * 0.02,
                            ),
                            Container(
                                child: Text("Every ten minutes spent in App",
                                    style: TextStyle(
                                        fontSize: size.width * 0.04,
                                        color: Colors.black))),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.width * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: size.width * 0.8,
                    height: size.width * 0.15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(7),
                      color: kBackgroundColor,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: size.width * 0.02,
                            ),
                            Container(
                              width: size.width * 0.11,
                              height: size.width * 0.11,
                              decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadiusDirectional.circular(
                                    size.width * 0.075),
                              ),
                              child: Center(
                                  child: Text(
                                "${currentUserWallet.coinsDailyCheckIns}",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: size.width * 0.045),
                              )),
                            ),
                            SizedBox(
                              width: size.width * 0.02,
                            ),
                            Container(
                                child: Text("Daily Check-ins",
                                    style: TextStyle(
                                        fontSize: size.width * 0.04,
                                        color: Colors.black))),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.width * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: size.width * 0.8,
                    height: size.width * 0.15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(7),
                      color: kBackgroundColor,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: size.width * 0.02,
                            ),
                            Container(
                              width: size.width * 0.11,
                              height: size.width * 0.11,
                              decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadiusDirectional.circular(
                                    size.width * 0.075),
                              ),
                              child: Center(
                                  child: Text(
                                "${currentUserWallet.coinsVideoUpload}",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: size.width * 0.045),
                              )),
                            ),
                            SizedBox(
                              width: size.width * 0.02,
                            ),
                            Container(
                                child: Text("Whenever you upload video",
                                    style: TextStyle(
                                        fontSize: size.width * 0.04,
                                        color: Colors.black))),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.width * 0.09,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: size.width * 0.65,
                    height: size.width * 0.15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(7),
                      color: kBackgroundColor,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: size.width * 0.02,
                            ),
                            SizedBox(
                              width: size.width * 0.02,
                            ),
                            Container(
                                child: Text("Request Redeem",
                                    style: TextStyle(
                                        fontSize: size.width * 0.05,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold))),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.width * 0.09,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
