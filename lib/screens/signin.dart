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
            children: <Widget>[
              const Gap(25),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Login".toUpperCase(),
                  style: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Spacer(),
              _buildTextField("Enter Your Mobile Number", "+92 3001234567",
                  const Icon(Icons.check_circle)),
              const Gap(10),
              _buildTextField("Enter Your Password", "***********",
                  const Icon(CupertinoIcons.eye),
                  isPassword: true),
              const Gap(10),
              const Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Forget Password? ",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              const Gap(15),
              Container(
                height: 50,
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
              const Gap(15),
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: "Don't Have An Account?",
                      style: TextStyle(
                          fontWeight: FontWeight.normal, color: Colors.black),
                      children: [
                        TextSpan(
                            text: " Sign Up",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17)),
                      ],
                    ),
                  ],
                ),
              ),
              const Gap(5),
              _buildOR("or"),
              const Gap(15),
              _buildContinueMethod(
                  'assets/images/Google.png', "Continue With Google"),
              const Gap(15),
              _buildContinueMethod(
                  'assets/images/Group.png', "Continue With Apple"),
              const Gap(15),
              _buildOR("or"),
              const Text(
                "Conitinue as Guest",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
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
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text(
            label,
            style: const TextStyle(
              fontWeight: FontWeight.normal,
            ),
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

  Widget _buildOR(String text) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildContinueMethod(String imgUrl, String label) {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey[300],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage(imgUrl)),
          const Gap(10),
          Text(label),
        ],
      ),
    );
  }
}
