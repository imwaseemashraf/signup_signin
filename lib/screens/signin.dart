import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Align(
                alignment: Alignment.center,
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Spacer(),
              _buildTextField("Enter Your Mobile Number", "+92 303-7498907",
                  const Icon(Icons.check_circle)),
              const Gap(10),
              _buildTextField("Enter Your Password", "***********",
                  const Icon(CupertinoIcons.eye),
                  isPassword: true),
              Gap(10),
              const Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "ForGet Password? ",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              const Gap(15),
              Container(
                height: 43,
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black,
                ),
                child: const Center(
                  child: Text(
                    "Login",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String label, String hint, Icon icon,
      {bool isPassword = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontWeight: FontWeight.normal,
          ),
        ),
        const Gap(10),
        Container(
          height: 43,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey[300],
          ),
          child: TextField(
            obscureText: isPassword,
            textAlign: TextAlign.start,
            decoration: InputDecoration(
                border: InputBorder.none,
                errorBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintText: hint,
                isDense: false,
                hoverColor: Colors.red,
                // isCollapsed: true,
                contentPadding: const EdgeInsets.symmetric(vertical: 7),
                suffixIcon: icon),
          ),
        )
      ],
    );
  }
}
