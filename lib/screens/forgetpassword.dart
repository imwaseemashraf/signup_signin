import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:signup_signin/screens/verify.dart';

import '../components/buildtextfielswidget.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        centerTitle: true,
        title: Text(
          "Forgot".toUpperCase(),
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            const Gap(20),
            const Image(
              image: AssetImage("assets/images/cuate.png"),
              height: 200,
            ),
            const Gap(45),
            const Align(
              alignment: Alignment.center,
              child: Text(
                "Forgot Password?",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Gap(15),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                "Don't Worry! it happens.please enter phone number associated with your account ",
                textAlign: TextAlign.center,
                style: TextStyle(

                    // fontSize: 18,
                    // fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            const Gap(35),
            BuildTextFieldWidget(
              label: 'Enter Your Number ',
              hint: '+92 3001234567',
              icon: const Icon(CupertinoIcons.eye),
              isPassword: true,
            ),
            const Gap(15),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => const Verify()));
              },
              child: Container(
                height: 45,
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black,
                ),
                child: const Center(
                  child: Text(
                    "Get OTP",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
