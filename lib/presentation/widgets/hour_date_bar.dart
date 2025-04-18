import 'package:flutter/material.dart';

class HourDateBar extends StatelessWidget {
  const HourDateBar({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      width: size.width * 0.7,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Icon(Icons.calendar_month, color: Colors.redAccent, size: 26),
          const Text('09 Abril 2025 - 03:00 PM'),
        ],
      ),
    );
  }
}
