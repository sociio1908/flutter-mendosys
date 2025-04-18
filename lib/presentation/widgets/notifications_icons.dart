import 'package:flutter/material.dart';
import 'package:myapp/config/themes/utility.dart';

class NotificationsIcons extends StatelessWidget {
  final bool hasNotifications;
  const NotificationsIcons({super.key, required this.hasNotifications});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        (hasNotifications)
            ? Icon(Icons.notifications, size: 30)
            : Icon(Icons.notifications, size: 30),

        if (hasNotifications)
          CircleAvatar(radius: 5, backgroundColor: Utility.primaryBlueColor),
      ],
    );
  }
}
