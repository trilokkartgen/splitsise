
import 'package:flutter/material.dart';
class ResuableButton extends StatelessWidget {
  String text;
  var function;
   ResuableButton({super.key, required this.text,required this.function});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return  GestureDetector(
      onTap: function,
      child: Container(
          height: size.height / 14,
          width: size.width / 1.2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.blue,
          ),
          alignment: Alignment.center,
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          )),
    );
  }
}
