import 'package:flutter/material.dart';
import 'package:veterinarian_ui/constans/colors.dart';

class VeterinarianCard extends StatelessWidget {
  final String vetName;
  final String rating;
  final String yearVet;
  final dynamic vetPic;
  const VeterinarianCard(
      {required this.vetName,
      required this.vetPic,
      required this.yearVet,
      required this.rating,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 25,
      ),
      child: Container(
        width: 180,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.transparent,
              child: ClipOval(
                child: Image.asset(
                  vetPic,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.star,
                  color: star,
                ),
                const SizedBox(
                  width: 2,
                ),
                Text(
                  rating,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              vetName,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Veterinarian",
            ),
            Text(
              yearVet,
            ),
          ],
        ),
      ),
    );
  }
}
