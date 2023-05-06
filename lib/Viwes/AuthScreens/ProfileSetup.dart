import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';
import '../Utils/AppColors.dart';
import '../Utils/Function.dart';
import '../Utils/MyButton.dart';
import '../Utils/MyString.dart';
import '../Utils/MyText.dart';
import '../Utils/MyTextFromField.dart';

class ProfileSetupScreen extends StatelessWidget {
  // final profileController = Get.put(ProfileController());
  // var ptext = ProfileStrings;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: ProfileStrings.fillYourProfile.text.make(),
      ),
      body: SafeArea(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
