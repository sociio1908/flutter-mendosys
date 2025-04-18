import 'package:flutter/material.dart';
import 'package:myapp/config/themes/utility.dart';

class CustomButton extends StatelessWidget {
  final String btnName;
  final bool filled;
  final Function onTap;

  const CustomButton({
    super.key,
    required this.btnName,
    required this.onTap,
    this.filled = false,
  });

  @override
  Widget build(BuildContext context) {
    if (!filled) {
      return GestureDetector(
        onTap: () {
          onTap();
        },
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          height: 55,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(width: 2, color: Utility.primaryOrangeColor),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            btnName,
            style: TextStyle(
              color: Utility.primaryOrangeColor,
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
        ),
      );
    } else {
      return InkWell(
        onTap: () {
          onTap();
        },
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          height: 55,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Utility.primaryOrangeColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            btnName,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
        ),
      );
    }
  }
}
