import 'package:flutter/material.dart';

import '../../config/themes/utility.dart' show Utility;

class CustomLoggedUser extends StatelessWidget {
  final BoxConstraints constrains;
  final String userName;
  const CustomLoggedUser({
    super.key,
    required this.constrains,
    required this.userName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      width: constrains.maxWidth,
      height: constrains.maxHeight * .2,
      decoration: BoxDecoration(color: Utility.primaryBlueColor),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: [
          CircleAvatar(
            backgroundColor: Utility.primaryOrangeColor,
            radius: 30,
            child: Icon(size: 30, color: Colors.white, Icons.person_3),
          ),
          Text(
            userName,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Utility.primaryOrangeColor,
            ),
          ),
        ],
      ),
    );
  }
}
