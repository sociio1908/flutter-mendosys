import 'package:flutter/material.dart';
import '../../config/themes/utility.dart';

// ignore: must_be_immutable
class CustomTextInputField extends StatelessWidget {
  final String labelName;
  final Function onChanged;
  final Function? onIconTap;
  final TextInputType textInputType;
  final IconData suffixIcon;
  final Color iconColor;

  CustomTextInputField({
    super.key,
    required this.labelName,
    required this.onChanged,
    this.onIconTap,
    this.textInputType = TextInputType.text,
    this.suffixIcon = Icons.abc,
    this.iconColor = const Color(0xFFE9E9E9),
  });

  // final Color _orangeColor = Utility.primaryOrangeColor;
  // final Color _blueColor = Utility.primaryBlueColor;
  final customBorderInput = OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: BorderSide(
      color: Colors.grey.shade300,
      strokeAlign: 5,
      width: 2,
    ),
  );
  final customFocusedBorderInput = OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: BorderSide(
      color: Utility.primaryOrangeColor,
      strokeAlign: 5,
      width: 2,
    ),
  );

  bool validated = true;

  final FocusNode _focusNode = FocusNode();

  void validator(String validatorVal) {
    (validatorVal.isEmpty) ? validated = true : validated = false;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      alignment: Alignment.center,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
    
      child: TextFormField(
    textCapitalization: TextCapitalization.sentences,
        focusNode: _focusNode,
        onChanged: (val) {
          onChanged(val);
        },
        keyboardType: textInputType,
        decoration: InputDecoration(
          suffixIcon: IconButton(
            onPressed: () => onIconTap,
            icon: Icon(suffixIcon, color: iconColor),
          ),
          label: Text(
            labelName,
            style: TextStyle(fontWeight: FontWeight.w400, color: Colors.grey),
          ),
          border: customBorderInput,
          focusedBorder: customFocusedBorderInput,
          enabledBorder: customBorderInput,
        ),
      ),
    );
  }
}
