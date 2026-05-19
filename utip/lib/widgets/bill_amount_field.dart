import 'package:flutter/material.dart';

class BillAmountField extends StatelessWidget {
  const BillAmountField({
    super.key, required this.onChanged, required this.billAmount,
  });
  final String billAmount;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'Enter bill amount',
        prefixIcon: Icon(Icons.currency_rupee),
        labelText: 'Bill Amount'
      ),
      onChanged: (value) {
        onChanged(value);
      },
    );
  }
}
