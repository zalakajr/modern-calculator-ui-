import 'package:flutter/material.dart';
import 'package:simplecalctut/components/buttongrid.dart';

class Calculatorscreen extends StatefulWidget {
  // for the toggle function to be created in the main file

  final void Function() toggleTheme;
  const Calculatorscreen({super.key, required this.toggleTheme});

  @override
  State<Calculatorscreen> createState() => _CalculatorscreenState();
}

class _CalculatorscreenState extends State<Calculatorscreen> {
  String input = '0';
  String result = '';
  @override
  Widget build(BuildContext context) {
    // lets focus on the ui part of the calculator but first lets setup the theme of the app
    return Scaffold(
      // lets create the toggle icon to toggle from light to dark mode

      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: IconButton(
                onPressed: widget.toggleTheme, icon: Icon(Icons.brightness_6)),
          )
        ],
      ),

      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 70,
              ),

              // now lets create an input field

              TextField(
                //for the controller
                controller: TextEditingController(text: input),
                readOnly: true,
                textAlign: TextAlign.end,
                decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide.none)),

                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.secondary),
              ),

              SizedBox(
                height: 20,
              ),

              // Creating the result box to display results

              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                alignment: Alignment.centerRight,
                child: Text(
                  result,
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                      fontSize: 32,
                      fontWeight: FontWeight.bold),
                ),
              ),

              Spacer(),

              // lets create the button grid
              ButtonGrid(
                onButtonPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
