import 'package:calculator/colors.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(MaterialApp(
    home: CalculatorApp(),
  ));
}

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({super.key});

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  //variables
  var input = '';
  var output = '';
  var operation = '';
  var hideInput = false;
  var outputSize = 34.0;
  onButtonClick(value) {
    // if value is AC
    if (value == 'AC') {
      input = '';
      output = '';
    } else if (value == '<') {
      if (input.isNotEmpty) input = input.substring(0, input.length - 1);
    } else if (value == '=') {
      if (input.isNotEmpty) {
        var userInput = input;

        Parser p = Parser();
        Expression expression = p.parse(userInput);
        ContextModel cm = ContextModel();
        var finalValue = expression.evaluate(EvaluationType.REAL, cm);
        output = finalValue.toString();
        if (output.endsWith('.0')) {
          output = output.substring(0, output.length - 2);
        }
        input = output;
        hideInput = true;
        outputSize = 55;
      }
    } else {
      input = input + value;
      hideInput = false;
      outputSize = 35;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        appBar: AppBar(
          title: Text(
            'Calculator',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        backgroundColor: Colors.black,
        body: Column(
          children: [
            //input and output
            Expanded(
                child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    hideInput ? '' : input,
                    style: TextStyle(fontSize: 48, color: Colors.white),
                  ),
                  SizedBox(height: 20),
                  Text(
                    output,
                    style: TextStyle(
                        fontSize: outputSize,
                        color: Colors.white.withOpacity(0.7)),
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            )),
            // buttons area
            Row(
              children: [
                button(
                    text: 'AC',
                    buttonBgColor: operatorColor,
                    tColor: orangecolors),
                button1(
                    text: "<",
                    buttonBgColor: operatorColor,
                    tColor: orangecolors),
                button(text: '', buttonBgColor: Colors.transparent),
                button(
                    text: '/',
                    buttonBgColor: operatorColor,
                    tColor: orangecolors),
              ],
            ),
            Row(
              children: [
                button(
                  text: '7',
                ),
                button(text: '8'),
                button(text: '9'),
                button(
                    text: '*',
                    buttonBgColor: operatorColor,
                    tColor: orangecolors),
              ],
            ),
            Row(
              children: [
                button(
                  text: '4',
                ),
                button(text: '5'),
                button(text: '6'),
                button(
                    text: '-',
                    buttonBgColor: operatorColor,
                    tColor: orangecolors),
              ],
            ),
            Row(
              children: [
                button(
                  text: '1',
                ),
                button(text: '2'),
                button(text: '3'),
                button(
                    text: '+',
                    buttonBgColor: operatorColor,
                    tColor: orangecolors),
              ],
            ),
            Row(
              children: [
                button(
                    text: '%',
                    buttonBgColor: operatorColor,
                    tColor: orangecolors),
                button(text: '0'),
                button(text: '.'),
                button(
                  text: '=',
                  buttonBgColor: orangecolors,
                ),
              ],
            ),
          ],
        )));
  }

  Widget button({text, tColor = Colors.white, buttonBgColor = buttoncolor}) {
    return (Expanded(
        child: Container(
      margin: EdgeInsets.all(8),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              padding: EdgeInsets.all(22),
              primary: buttonBgColor),
          onPressed: () => onButtonClick(text),
          child: Text(
            text,
            style: TextStyle(
                fontSize: 18, color: tColor, fontWeight: FontWeight.bold),
          )),
    )));
  }

  Widget button1({text, tColor = Colors.white, buttonBgColor = buttoncolor}) {
    return (Expanded(
        child: Container(
      margin: EdgeInsets.all(8),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              padding: EdgeInsets.all(22),
              primary: buttonBgColor),
          onPressed: () => onButtonClick(text),
          child: Icon(Icons.backspace, color: Colors.orange)),
    )));
  }
}
