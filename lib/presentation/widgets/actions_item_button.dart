import 'package:flutter/material.dart';

class ActionsItemButton extends StatelessWidget {
  final String buttonIcon;
  final Size size;
  final String buttonName;
  final Function onTap;

  const ActionsItemButton({
    super.key,
    required this.buttonIcon,
    required this.buttonName,
    required this.size,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap(buttonName, context);
      },
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFFf5f6f7),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withAlpha(90),
              spreadRadius: 0.5,
              blurRadius: 3,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              buttonIcon,
              width: size.width * 0.1,
              fit: BoxFit.fitWidth,
            ),
            Text(
              buttonName,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
