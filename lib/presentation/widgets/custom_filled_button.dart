import 'package:flutter/material.dart';
import 'package:myapp/config/themes/utility.dart';

class CustomFilledButton extends StatelessWidget {
  const CustomFilledButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: 55,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Utility.primaryOrangeColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        'Nueva Venta',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 20,
        ),
      ),
    );
  }
}
