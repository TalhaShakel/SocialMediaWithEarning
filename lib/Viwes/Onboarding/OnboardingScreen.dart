import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shootbee/Controllers/MainControllor.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../Utils/AppColors.dart';
import '../Utils/Function.dart';
import '../Utils/MyButton.dart';
import '../Utils/MyString.dart';
import '../Utils/MyText.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});

  @override
  final controllor = onboardingControllor();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(bottom: 50, left: 16, right: 16, top: 55),
      child: Column(
        children: [
          Image.asset(
            'assets/AppName.png',
            width: 200,
          ),
          Expanded(
            child: PageView.builder(
                scrollBehavior: ScrollBehavior(),
                itemCount: controllor.Onboard.length,
                controller: controllor.pagecontrollor,
                onPageChanged: controllor.selectedPageIndex,
                itemBuilder: (context, index) => OnboardingContent(
                      image: controllor.Onboard[index].image,
                      title: controllor.Onboard[index].title,
                    )),
          ),
          SmoothPageIndicator(
            controller: controllor.pagecontrollor,
            count: controllor.Onboard.length,
            effect: ExpandingDotsEffect(
              activeDotColor: MyColor.darkPink,
              dotColor: MyColor.darkPink.withOpacity(.25),
            ),
          ),
          Utils.verticalSpacer(60),
          // InkWell(
          //     onTap: controllor.ForwordAction,
          //     child: Obx(
          //       () => MyText(
          //         text: controllor.isLastpage
          //             ? MyString.appName
          //             : MyString.nextbuttonText,
          //       ),
          //     )),
          Obx(() {
            return MyButton(
              bordercolor: Colors.transparent,
              buttontext: controllor.isLastpage
                  ? MyString.nextbuttonText
                  : MyString.nextbuttonText,
              onPressed: controllor.ForwordAction,
            );
          }),
        ],
      ),
    ));
  }
}

class OnboardModel {
  final String image, title;
  OnboardModel({required this.image, required this.title});
}

class OnboardingContent extends StatelessWidget {
  final String image;
  final String title;
  const OnboardingContent({
    required this.image,
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // shrinkWrap: true,
      children: [
        const Spacer(),
        Image.asset(
          image,
          height: Get.height * 0.3.h,
        ),
        Utils.verticalSpacer(10.r),
        MyText(
          textAlignment: TextAlign.center,
          text: title,
          fontsize: 30.sp,
          fontweight: FontWeight.bold,
          fontcolor: MyColor.orangeColor,
        ),
        Utils.verticalSpacer(60.r),
      ],
    );
  }
}
