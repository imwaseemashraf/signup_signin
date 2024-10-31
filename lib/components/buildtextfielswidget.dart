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
        TextFormField(
          obscureText: isPassword!,
          textAlign: TextAlign.start,
          validator: (value) {
            if (value!.isEmpty) {
              return "please fill the $label";
            }
            return null;
          },
          decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey[200],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                // borderSide: const BorderSide(color: Colors.grey),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.grey),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.red),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.grey),
              ),
              hintText: hint,
              isDense: false,
              hoverColor: Colors.red,
              // isCollapsed: true,
              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
              suffixIcon: icon),
        )
      ],
    );
  }
}
