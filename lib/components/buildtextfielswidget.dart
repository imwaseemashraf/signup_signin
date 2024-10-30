import 'dart:core';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BuildTextFieldWidget extends StatelessWidget {
  String label;
  String hint;
  Icon icon;
  bool isPassword;
  BuildTextFieldWidget(
      {super.key,
      required this.label,
      required this.hint,
      required this.icon,
      required this.isPassword});

  @override
  Widget build(BuildContext context) {
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
            obscureText: isPassword!,
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
