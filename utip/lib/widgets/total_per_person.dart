import 'package:flutter/material.dart';

class TotalPerPerson extends StatelessWidget {
  const TotalPerPerson({
    super.key,
    required this.theme,
    required this.style,
    required this.totalPerPerson,
  });

  final ThemeData theme;
  final TextStyle style;
  final double totalPerPerson;

  @override
  Widget build(BuildContext context) {
    return Container(
      // alignment:Cen,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: theme.colorScheme.inversePrimary,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
           Text(
            'Total per person', 
            style: style
            ),
           Text(
            '₹ $totalPerPerson', 
              style: style.copyWith(
                fontSize: theme.textTheme.displaySmall!.fontSize
              )
          ),
        ],
      )
    );
  }
}
