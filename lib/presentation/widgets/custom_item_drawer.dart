import 'package:flutter/material.dart';
import 'package:myapp/config/themes/utility.dart' show Utility;

class CustomItemDrawer extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function onTap;

  const CustomItemDrawer({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap(),
          child: ListTile(
            leading: Icon(icon, color: Utility.primaryOrangeColor),
            title: Text(
              title,
              style: TextStyle(color: Utility.primaryOrangeColor, fontSize: 16),
            ),
          ),
        ),
        Divider(color: Colors.deepOrange.shade100, height: 5),
      ],
    );
  }
}
