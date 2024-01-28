import 'package:flutter/material.dart';
import 'package:veterinarian_ui/constans/colors.dart';

class CategoryCard extends StatelessWidget {
  final String text;
  final dynamic icon;
  const CategoryCard(this.text, this.icon, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Image.asset(
              icon,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(text),
          ],
        ),
      ),
    );
  }
}
