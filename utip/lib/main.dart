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
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF000000)),
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
    return Scaffold(
      appBar: AppBar(
        title: Text('UTip'),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        // textDirection: TextDirection.rtl,
        // verticalDirection: VerticalDirection.down,
        children: [
          Container(
            padding: const EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [

                const Text(
                  'Total per person', 
                  style: TextStyle(
                    fontSize: 20, color: Colors.white,
                    fontWeight: FontWeight.bold
                  )
                ),
                const Text(
                  'Rs. 0.00', 
                  style: TextStyle(
                    fontSize: 20, color: Colors.white,
                    fontWeight: FontWeight.bold
                  )
                ),
              ],
            )
          ),
        ],
      ),
    );
  }
}

