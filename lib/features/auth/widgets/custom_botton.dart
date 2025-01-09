import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  String? text;

   CustomButton({super.key,required this.text,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.deepPurpleAccent,
        minimumSize: const Size(double.infinity, 50),
      ),
      onPressed:onPressed,
      child:  Center(
        child: Text(
          text!,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
