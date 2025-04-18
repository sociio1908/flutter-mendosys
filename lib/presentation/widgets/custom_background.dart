import 'package:flutter/material.dart';
import 'package:myapp/config/themes/utility.dart';

class CustomBackground extends StatelessWidget {
  const CustomBackground({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: Utility.primaryOrangeColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
      ),
      width: double.infinity,
      height: size.height * .25,
      child: null,
    );
  }
}
