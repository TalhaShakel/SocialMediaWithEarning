import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shootbee/Controllers/MainControllor.dart';
import 'package:shootbee/Viwes/AuthScreens/ProfileSetup.dart';

import '../../Controllers/AuthController.dart';
import '../Utils/AppColors.dart';
import '../Utils/Function.dart';
import '../Utils/MyButton.dart';
import '../Utils/MyString.dart';
import '../Utils/MyText.dart';
import '../Utils/MyTextFromField.dart';
import '../Onboarding/SignupScreen.dart';

class AccountCreationScreen extends StatelessWidget {
  // bool isChecked = false;
  AccountCreationScreen({super.key});
  @override
  TextEditingController emailControllor = TextEditingController();
  TextEditingController passwordContr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final AuthController authController = Get.put(AuthController());

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: GetBuilder<AuthController>(
          init: AuthController(),
          builder: (authController) {
            return SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 22,
                  right: 22,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //Utils.verticalSpacer(),
                        const Icon(Icons.arrow_back),
                        Utils.verticalSpacer(40),

                        MyText(
                          text: MyString.createAccountText,
                          fontsize: 42,
                          fontweight: FontWeight.bold,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        MyTextField(
                          pIcon: Icons.email,
                          hintText: MyString.emailText,
                          controller: emailControllor,
                        ),
                        Utils.verticalSpacer(19),
                        MyTextField(
                          pIcon: Icons.lock,
                          hintText: MyString.passwordText,
                          controller: passwordContr,
                        ),
                        Utils.verticalSpacer(22),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                authController.toggleRememberMe(
                                    !authController.rememberMe);
                                // authController.update();
                              },
                              child: Container(
                                height: 24,
                                width: 24,
                                decoration: BoxDecoration(
                                  color: authController.rememberMe
                                      ? MyColor.darkPink
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(6),
                                  border: Border.all(
                                    color: const Color(0xffA0309C),
                                    width: 2,
                                  ),
                                ),
                                child: Center(
                                  child: authController.rememberMe
                                      ? const Icon(
                                          Icons.check,
                                          size: 20.0,
                                          color: Colors.white,
                                        )
                                      : null,
                                ),
                              ),
                            ),
                            Utils.horizontalSpacer(6),
                            MyText(text: MyString.remenbertext)
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        MyButton(
                            bordercolor: Colors.transparent,
                            buttontext: MyString.signUpText,
                            fontweight: FontWeight.bold,
                            onPressed: () {
                              Get.to(
                                () => ProfileSetupScreen(),
                                transition: Transition.rightToLeftWithFade,  
                              );
                            }),
                        Utils.verticalSpacer(70),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .3,
                              child: const Divider(
                                thickness: 2,
                              ),
                            ),
                            MyText(text: MyString.continueWText),
                            SizedBox(
                                width: MediaQuery.of(context).size.width * .3,
                                child: const Divider(
                                  thickness: 2,
                                ))
                          ],
                        ),
                        Utils.verticalSpacer(30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const ContanierW(
                              height: 48,
                              width: 48,
                              icon: "assets/facebook.png",
                            ),
                            Utils.horizontalSpacer(20),
                            const ContanierW(
                              height: 48,
                              width: 48,
                              icon: "assets/google.png",
                            ),
                            Utils.horizontalSpacer(20),
                            // const ContanierW(
                            //   height: 48,
                            //   width: 48,
                            //   icon: Icons.facebook,
                            // ),
                          ],
                        ),
                        Utils.verticalSpacer(51),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              MyText(
                                text: MyString.dinNotAccount,
                                fontsize: 14,
                                fontcolor: const Color(0xff9E9E9E),
                                fontweight: FontWeight.w400,
                              ),
                              InkWell(
                                onTap: () {},
                                child: MyText(
                                  text: MyString.signUpText,
                                  fontsize: 14,
                                  fontcolor: MyColor.darkPink,
                                  fontweight: FontWeight.w600,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
