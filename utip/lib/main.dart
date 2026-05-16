import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var style = theme.textTheme.titleMedium!.copyWith(
      color: theme.colorScheme.onPrimary,
      fontWeight: FontWeight.bold
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('UTip'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
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
                  '₹ 0.00', 
                    style: style.copyWith(
                      fontSize: theme.textTheme.displaySmall!.fontSize
                    )
                ),
              ],
            )
          ),
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(
                color: theme.colorScheme.inversePrimary,
                width: 2
              ),
              // color: theme.colorScheme.inversePrimary,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                // Text(
                //   'Bill Amount',
                //   style: style.copyWith(
                //     color: theme.colorScheme.onSurfaceVariant
                //   )
                // ),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter bill amount',
                    prefixIcon: Icon(Icons.currency_rupee),
                    labelText: 'Bill Amount'
                  ),
                  onChanged: (String amount) {
                    // print('Bill amount changed: $amount');
                    // Handle bill amount change
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Split',
                      style: style.copyWith(
                        color: theme.colorScheme.onSurfaceVariant
                      )
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {}, 
                          icon: const Icon(Icons.remove)
                        ),
                        const Text('1'),
                        IconButton(
                          onPressed: () {}, 
                          icon: const Icon(Icons.add)
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Tip',
                      style: style.copyWith(
                        color: theme.colorScheme.onSurfaceVariant
                      )
                    ),
                    Text(
                      '₹ 0.00',
                      style: style.copyWith(
                        color: theme.colorScheme.onSurfaceVariant
                      )
                    ),
                  ],
                ),
                Text(
                  '10%',
                  style: style.copyWith(
                    color: theme.colorScheme.onSurfaceVariant
                  )
                ),
                Slider(
                  value: 10,
                  min: 0,
                  max: 100,
                  divisions: 10,
                  label: '10%',
                  onChanged: (value) {},
                )
              ]
            ),
          )
        ],
      ),
    );
  }
}

