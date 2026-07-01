import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTextfiled extends StatelessWidget {
  const CustomTextfiled( {
    super.key,
    this.suffixIcon,
    required this.name,
    required this.iconData,
  });
  final String name;
  final SvgPicture iconData;
  final IconData? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.all(5),
            child: iconData,
          ),

          prefixIconConstraints: const BoxConstraints(
            minWidth: 40,
            minHeight: 40,
          ),
           suffixIcon: Icon(suffixIcon),
          label: Text(name),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
        ),
      ),
    );
  }
}
