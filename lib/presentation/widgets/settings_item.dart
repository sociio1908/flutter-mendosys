import 'package:flutter/material.dart';
import '../../config/themes/utility.dart';

class SettingsItem extends StatelessWidget {
  final IconData _iconItem;
  final String _itemName;

  SettingsItem({
    super.key,
     IconData iconItem=Icons.settings_outlined,
    required String itemName,
  }) : _iconItem = iconItem,
       _itemName = itemName;

  // final Color _orangeColor = Utility.primaryOrangeColor;
  final Color _blueColor = Utility.primaryBlueColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 240, 240, 240),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: ListTile(
        leading: Icon(_iconItem, color: _blueColor),
        title: Text(_itemName, style: TextStyle(color: _blueColor)),
        trailing: Icon(Icons.arrow_forward_ios, color: _blueColor, size: 20),
      ),
    );
  }
}
