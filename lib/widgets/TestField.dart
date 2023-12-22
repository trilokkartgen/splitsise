
import 'package:flutter/material.dart';
class ResuableTextField extends StatelessWidget {
  String hintText;
  IconData icon;
  TextEditingController controller;
   ResuableTextField({super.key,required this.controller,required this.hintText,required this.icon});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      height: size.height / 14,
      width: size.width / 1.1,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: Icon(icon),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );

  }
}
