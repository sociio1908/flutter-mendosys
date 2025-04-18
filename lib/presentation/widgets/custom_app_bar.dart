import 'package:flutter/material.dart';
import 'package:myapp/presentation/widgets/widgets.dart'
    show NotificationsIcons;

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        'MendoSys',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
      ),
      actions: [
        NotificationsIcons(hasNotifications: true),
        const SizedBox(width: 16),
      ],
    );
  }
}
