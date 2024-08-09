import 'package:flutter/material.dart';
import 'package:travelapp/utilities/colors.dart';

class CategoryCard extends StatelessWidget {
  final String title, image;
  final VoidCallback press;
  const CategoryCard({
    super.key, required this.title, required this.image, required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: InkWell(
        onTap:press,
        child: Material(
          elevation: 5,
          borderRadius: BorderRadius.circular(100),
          child: Container(
            height: 55,
            decoration: BoxDecoration(
              color: kWhiteClr,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8.0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("image"),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(title,
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
