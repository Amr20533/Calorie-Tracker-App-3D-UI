import 'package:flutter/material.dart';

class CustomCalculationBox extends StatelessWidget {
  const CustomCalculationBox({
    super.key, required this.value, required this.title, required this.icon, required this.iconColor,
  });
  final double value;
  final String title;
  final IconData icon;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Icon(icon,
              color: iconColor),
        ),
        Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('$value'),
                Text(
                  title,
                  style:
                  const TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ))
      ],
    );
  }
}
