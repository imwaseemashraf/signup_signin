import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:signup_signin/components/buildtextfielswidget.dart';
import 'package:signup_signin/screens/forgetpassword.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
        child: Form(
          key: _formkey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
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
                const Gap(35),
                BuildTextFieldWidget(
                  label: "Enter Your Mobile Number",
                  hint: "+92 3001234567",
                  icon: const Icon(Icons.check_circle),
                  isPassword: false,
                ),
                const Gap(10),
                BuildTextFieldWidget(
                    label: "Enter Your Password",
                    hint: "***********",
                    icon: const Icon(CupertinoIcons.eye),
                    isPassword: true),
                const Gap(10),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ForgetPassword(),
                      ),
                    );
                  },
                  child: const Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Forget Password? ",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                      ),
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
                  "Continue as Guest",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
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
