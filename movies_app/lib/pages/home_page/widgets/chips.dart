import 'package:flutter/material.dart';
import 'custom_chip.dart';

class Chips extends StatefulWidget {
  const Chips({super.key});

  @override
  State<Chips> createState() => _ChipsState();
}

class _ChipsState extends State<Chips> {
  final style = const TextStyle(color: Colors.white54);
  Color color = Colors.grey.shade900;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          CustomChip(text: 'Movie'),
          CustomChip(text: 'Movie'),
          CustomChip(text: 'Not Watched'),
          CustomChip(text: 'Watched'),
        ],
      ),
    );
  }
}
