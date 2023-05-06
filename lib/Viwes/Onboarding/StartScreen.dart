import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shootbee/Viwes/Onboarding/OnboardingScreen.dart';

import '../Utils/MyButton.dart';
import '../Utils/MyText.dart';
import '../Utils/AppColors.dart';
import '../Utils/Function.dart';
import '../Utils/MyString.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Utils.verticalSpacer(50),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Image(
                image: AssetImage('assets/AppName.png'),
                width: 200,
              ),
              Image(
                image: AssetImage(
                  'assets/Rectangle.png',
                ),
              ),
            ],
          ),
          Utils.verticalSpacer(40),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 5,
              left: 20,
              right: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText(
                  text: MyString.wellComeText,
                  fontsize: 40,
                  fontweight: FontWeight.bold,
                  fontcolor: MyColor.hexRedColor,
                ),
                MyText(
                    text: MyString.appName,
                    fontsize: 50,
                    fontweight: FontWeight.w900,
                    fontcolor: MyColor.darkPink),
                Utils.verticalSpacer(2),
                MyText(
                    textAlignment: TextAlign.start,
                    text: MyString.loremIpsum,
                    fontsize: 17,
                    fontweight: FontWeight.w500,
                    fontcolor: MyColor.blackColor),
                Utils.verticalSpacer(28),
                MyButton(
                  onPressed: () {
                    Get.to(() => OnBoardingScreen());
                  },
                  radius: 100,
                  bordercolor: Colors.transparent,
                  buttontext: MyString.nextbuttonText,
                  fontsize: 16,
                  fontweight: FontWeight.bold,
                ),
              ],
            ),
          ),
        ],
      ),
    )));
  }
}
