import 'package:flutter/material.dart';
import 'dart:math'; // Step 1: Importing the dart math library

var random = Random(); // Step 2: Creating a random object

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  // Step 3: Making the MyApp class a StatefulWidget
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var randomNum =
      random.nextInt(2); // Step 4: Creating a random number variable

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Step 5: Creating the MaterialApp widget
      title: 'Heads or Tails', // Step 6: Adding the title
      debugShowCheckedModeBanner: false, // Step 7: Removing the debug banner
      home: Scaffold(
        // Step 8: Creating the Scaffold widget
        appBar: AppBar(
          // Step 9: Creating the AppBar widget
          title: const Text('Heads or Tails'), // Step 10: Adding the title
        ),
        body: Center(
          // Step 11: Creating the body
          child: Column(
            // Step 12: Creating the Column widget
            mainAxisAlignment: MainAxisAlignment
                .center, // Step 13: Aligning the Column widget to the center
            children: [
              Text(
                  'Coinflip: ${randomNum == 0 ? 'Heads' : 'Tails'}'), // Step 14: Displaying the result
              ElevatedButton(
                // Step 15: Creating the ElevatedButton widget
                onPressed: () {
                  // Step 16: Adding the onPressed property
                  setState(() {
                    // Step 17: Updating the state
                    randomNum = random
                        .nextInt(2); // Step 18: Generating a new random number
                  });
                },
                child: const Text('Flip'), // Step 19: Adding the button text
              ),
            ],
          ),
        ),
      ),
    );
  }
}
