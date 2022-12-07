import 'package:flutter/material.dart';

class CustomChip extends StatefulWidget {
  const CustomChip({super.key,required this.text});
  final String text;
  

  @override
  State<CustomChip> createState() => _CustomChipState();
}

class _CustomChipState extends State<CustomChip> {
  bool isEnabled = false;
  @override
  Widget build(BuildContext context) {
    return FilterChip(
      selected: isEnabled,
      selectedColor: Colors.grey.shade800,
      showCheckmark: false,
      onSelected: ((value) {
        setState(() {
          isEnabled = !isEnabled;
        });
      }),
      label:  Text(
        widget.text,
        style: const TextStyle(color: Colors.white54),
      ),
      backgroundColor: Colors.grey.shade900,
    );
  }
}
