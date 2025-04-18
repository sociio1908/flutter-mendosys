import 'package:flutter/material.dart';
import 'package:myapp/presentation/widgets/widgets.dart';

class CustomSearchBar extends StatelessWidget {
  final String hintTexLabel;
  final IconData sufixIcon, prefixIcon;
  final Function onTapSuffixIcon, onChanged;

  CustomSearchBar({
    super.key,
    required this.hintTexLabel,
    required this.sufixIcon,
    required this.prefixIcon,
    required this.onTapSuffixIcon,
    required this.onChanged,
  });

  // final Color _orangeColor = Utility.primaryOrangeColor;
  final Color _blueColor = Utility.primaryBlueColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 240, 240, 240),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: TextFormField(
        onChanged: (val) {
          onChanged(val);
        },
        textCapitalization: TextCapitalization.sentences,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          hintText: hintTexLabel,
          hintStyle: TextStyle(color: _blueColor),
          prefixIcon: Icon(
            Icons.search_outlined,
            size: 27.5,
            color: _blueColor,
          ),

          suffixIcon: IconButton(
            onPressed: onTapSuffixIcon(),
            icon: Icon(Icons.qr_code_scanner, size: 30, color: _blueColor),
          ),
        ),
      ),
    );
  }
}
