import 'package:flutter/material.dart';

class MyButtonCard extends StatelessWidget {
  final String imagePath;
  final String titleCard;
  final Function()? onTap;

  const MyButtonCard(
      {super.key,
      required this.imagePath,
      required this.titleCard,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 140,
        height: 170,
        decoration: BoxDecoration(
          color: Colors.white, // Add background color
          borderRadius: BorderRadius.circular(10), // Add rounded corners
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 7,
            ),
          ],
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 50,
                height: 50,
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                titleCard,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
