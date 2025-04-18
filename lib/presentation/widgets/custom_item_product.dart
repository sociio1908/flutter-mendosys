import 'package:flutter/material.dart';

import '../../config/themes/utility.dart';

class CustomItemProduct extends StatelessWidget {
  final String proName, proCategory, proImage;
  final double proQuantity;

  CustomItemProduct({
    super.key,
    required this.proName,
    required this.proCategory,
    required this.proImage,
    required this.proQuantity,
  });

  final Color _blueColor = Utility.primaryBlueColor;
  // final Color _orangeColor = Utility.primaryOrangeColor;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
      width: double.infinity,
      height: size.height * .12,
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: ListTile(
        title: Text(
          proName,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontSize: 18, color: _blueColor),
        ),
        subtitle: Row(
          children: [
            Text(
              '$proCategory - ',
              style: TextStyle(fontSize: 16, color: Colors.grey),
              maxLines: 2,
              softWrap: true,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              '$proQuantity disp.',
              softWrap: true,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ],
        ),
        textColor: Utility.primaryBlueColor,
        trailing: Icon(Icons.arrow_forward_ios, size: 15),
      ),
    );
  }
}
