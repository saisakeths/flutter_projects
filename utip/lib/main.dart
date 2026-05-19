import 'package:flutter/material.dart';
import 'package:utip/widgets/bill_amount_field.dart';
import 'package:utip/widgets/person_counter.dart';
import 'package:utip/widgets/tip_slider.dart';
import 'package:utip/widgets/total_per_person.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UTip',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const UTip(),
    );
  }
}

class UTip extends StatefulWidget {
  const UTip({super.key});

  @override
  State<UTip> createState() => _UTipState();
}

class _UTipState extends State<UTip> {
  int counter = 1;
  double tipPercent = 0.0;
  var billAmount = 0.0;
  double tip = 0.0;
  var totalPerPerson = 0.0;
  void increment(){
    setState(() => counter++);
  }
  void decrement(){
    setState(() {
      if (counter > 1) {
        counter--;
      }
    });
  }
  

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var style = theme.textTheme.titleMedium!.copyWith(
      color: theme.colorScheme.onPrimary,
      fontWeight: FontWeight.bold
    );
    tip = (tipPercent / 100) * billAmount;
    tip = double.parse(tip.toStringAsFixed(2));
    totalPerPerson = (billAmount + tip) / counter;
    totalPerPerson = double.parse(totalPerPerson.toStringAsFixed(2));

    return Scaffold(
      appBar: AppBar(
        title: Text('UTip'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TotalPerPerson(theme: theme, style: style, totalPerPerson: totalPerPerson),
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(
                color: theme.colorScheme.inversePrimary,
                width: 2
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                BillAmountField(billAmount: billAmount.toString(), onChanged: (value) {
                  setState(() => billAmount = double.tryParse(value) ?? 0.0);
                }),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Split',
                      style: style.copyWith(
                        color: theme.colorScheme.onSurfaceVariant
                      )
                    ),
                    PersonCounter(theme: theme, counter: counter, onIncrement: increment, onDecrement: decrement),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Tip',
                      style: theme.textTheme.titleMedium
                    ),
                    Text(
                      '₹ $tip',
                      style: theme.textTheme.titleMedium
                    ),
                  ],
                ),
                Text(
                  '$tipPercent %',
                  style: theme.textTheme.titleMedium
                ),
                TipSlider(tipPercent: tipPercent, onChanged: (value) {
                  setState(() => tipPercent = value);
                })
              ]
            ),
          )
        ],
      ),
    );
  }
}
