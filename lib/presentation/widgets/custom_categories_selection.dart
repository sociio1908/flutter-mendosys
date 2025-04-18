import 'package:flutter/material.dart';
import 'package:myapp/presentation/widgets/widgets.dart';

class CustomCategoriesSelection extends StatelessWidget {
  final String itemName;
  final bool isSelected;
  final Function onTap;
  CustomCategoriesSelection({
    super.key,
    required this.itemName,
    required this.isSelected,
    required this.onTap,
  });

  final Color _orangeColor = Utility.primaryOrangeColor;
  // final Color _blueColor = Utility.primaryBlueColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap(itemName),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          (isSelected)
              ? Container(
                margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                padding: const EdgeInsets.symmetric(
                  vertical: 8.0,
                  horizontal: 12.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.deepOrange.shade100,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.check, color: _orangeColor),
                    const SizedBox(width: 8.0),
                    Text(
                      itemName,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: _orangeColor,
                      ),
                    ),
                  ],
                ),
              )
              : Container(
                margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                padding: const EdgeInsets.symmetric(
                  vertical: 8.0,
                  horizontal: 12.0,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    style: BorderStyle.solid,
                    strokeAlign: 2,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      itemName,
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
        ],
      ),
    );
  }
}
