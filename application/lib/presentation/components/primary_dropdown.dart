import 'package:flutter/material.dart';

class PrimaryDropdown extends StatelessWidget {
  const PrimaryDropdown({
    super.key,
    this.onChanged,
    required this.items,
    required this.value,
    required this.text,
  });

  final Function(dynamic)? onChanged;
  final List<DropdownMenuItem<String>>? items;
  final String value;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$text:',
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          constraints: const BoxConstraints(maxWidth: 600),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                isExpanded: true,
                items: items,
                value: value,
                onChanged: onChanged,
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
