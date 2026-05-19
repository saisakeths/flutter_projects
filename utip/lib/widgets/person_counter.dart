import 'package:flutter/material.dart';

class PersonCounter extends StatelessWidget {
  const PersonCounter({
    super.key,
    required this.theme,
    required this.counter,
    required this.onIncrement,
    required this.onDecrement,
  });

  final ThemeData theme;
  final int counter;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          color: theme.colorScheme.primary,
          onPressed: onDecrement, 
          icon: const Icon(Icons.remove)
        ),
        Text(
          '$counter',
          style: theme.textTheme.titleMedium,
        ),
        IconButton(
          color: theme.colorScheme.primary,
          onPressed: onIncrement, 
          icon: const Icon(Icons.add)
        ),
      ],
    );
  }
}