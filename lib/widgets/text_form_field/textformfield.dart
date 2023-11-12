import 'package:flutter/material.dart';

import '../../shared/styel/colors.dart';

class customTextFormField extends StatelessWidget {
  String label;
  var controlled = TextEditingController();
  String message;
  bool obsecure;

  customTextFormField(
      {required this.obsecure,
      required this.message,
      required this.label,
      required this.controlled});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: TextFormField(
            keyboardType: TextInputType.name,
            obscureText: obsecure,
            validator: (text) {
              if (text == "" || text == null) {
                return "$message";
              }
            },
            controller: controlled,
            maxLines: 1,
            decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10.0),
                label: Center(child: Text(label)),
                labelStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: primaryColor,
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: const BorderSide(
                      width: 2,
                      style: BorderStyle.none,
                    )))),
      ),
    );
  }
}
