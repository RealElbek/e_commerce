import 'package:flutter/material.dart';

class CustomClipRRect extends StatelessWidget {
  final String? imgURL;
  final String? text;
  final double? price;

  const CustomClipRRect(
      {super.key,
        required this.imgURL,
        required this.text,
        required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Column(
        children: [
          ClipRRect(

            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
            ),
            child: Image.asset(
              imgURL!,
              width: 200,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: 200,
            height: 70,
            padding: const EdgeInsets.only(bottom: 1),
            decoration: const BoxDecoration(
              color: Colors.white10,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(
                  8,
                ),
                bottomRight: Radius.circular(
                  8,
                ),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text!,
                  style: const TextStyle(color: Colors.white),
                ),
                Text(
                  "\$$price",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}