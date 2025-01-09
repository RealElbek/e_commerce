import 'package:flutter/material.dart';

class CustomClipRRect extends StatelessWidget {
  final String? imgURL;
  final String? text;
  final double? price;
  final String? topRightImgURL;

  const CustomClipRRect({
    super.key,
    required this.imgURL,
    required this.text,
    required this.price,
    this.topRightImgURL,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
              child: Image.asset(
                imgURL!,
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
              Positioned(
                top: 8,
                right: 8,
                child: ClipOval(
                  child: Image.asset(
                    topRightImgURL!,
                    width: 40,
                    height: 40,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
          ],
        ),
        Container(
          width: 200,
          height: 90,
          padding: const EdgeInsets.only(bottom: 1),
          decoration: const BoxDecoration(
            color: Colors.white10,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(8),
              bottomRight: Radius.circular(8),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text!,
                style: const TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 10),
              Text(
                "\$$price",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}