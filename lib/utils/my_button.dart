// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String iconImagePath;
  final String buttonText;
  const MyButton({
    Key? key,
    required this.iconImagePath,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 90,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            // color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: Colors.white,
                blurRadius: 30,
                spreadRadius: 10,
              ),
            ],
          ),
          child: Center(
            child: Image.asset(iconImagePath),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          buttonText,
          style: TextStyle(
              fontSize: 18,
              color: Colors.grey[600],
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
