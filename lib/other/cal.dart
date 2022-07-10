import 'package:flutter/material.dart';
import 'package:kakula/other/color_theme.dart';
import 'package:math_expressions/math_expressions.dart';

// CHANGE THE THEME DARK/LIGHT MODE
theme(String type) => lightTheme = type == 'light' ? true : false;

// JUST ASSIGNING A STRING AND INT TO A VARIABLE
int themeNum = 0, i = 0;
String output = '', answer = '';

//==========================================================
// JUST ASSIGNING A STRING AND INT TO A VARIABLE
//==========================================================
class Calculations {
  buttonPressed(String btnValue) {
    // LONGPRESS/PRESS AC BTN BEING EXECUTED
    btnValue == 'AC onLongPressed' ? [answer = '', output = '', i = 0] : null;
    btnValue == 'AC' ? output = '' : null;

    // ASSINGING VALUABLE OBJ TO A VAL
    List<String> a = output.split('');
    List<String> operand1 = ['+', '%', '*', '.', '(', ')', '/', '-'];
    List<String> numbers = [
      '0',
      '1',
      '2',
      '3',
      '4',
      '5',
      '6',
      '7',
      '8',
      '9',
      '+',
      '-'
    ];
    List<String> operand2 = ['%', '*', '/'];
    btnValue == 'X' ? btnValue = '*' : btnValue = btnValue;

    // OTHER BTN BEING EXECUTED
    btnValue == 'C' && output.isNotEmpty
        ? (output = output.substring(0, output.length - 1))
        : null;
    btnValue == '()'
        ? i == 0
            ? [output += '(', i = 1]
            : [output += ')', i = 0]
        : null;
    btnValue == '.' && output.isNotEmpty
        ? !operand1.contains(a.last)
            ? output += '.'
            : null
        : null;
    output.isNotEmpty && operand2.contains(btnValue)
        ? !operand2.contains(a.last)
            ? output += btnValue
            : null
        : null;
    numbers.contains(btnValue) ? output += btnValue : null;

    // if the equal btn is pressed
    if (btnValue == '=' && output.isNotEmpty) {
      try {
        Parser p = Parser();
        Expression exp = p.parse(output);
        ContextModel cm = ContextModel();
        RegExp regex = RegExp(r"([.]*0)(?!.*\d)");
        answer = exp
            .evaluate(EvaluationType.REAL, cm)
            .toString()
            .replaceAll(regex, '');
      } catch (e) {
        answer = 'Syntax Error';
      }
    }
  }
}

Widget calTextSpan() {
  List<String> operand1 = ['%', '(', ')'];
  List<String> newOutput = output.split('');
  List<String> operand2 = ['+', '*', '/', '-'];

  return Row(
    children: [
      for (int i = 0; i < newOutput.length; i++)
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: operand2.contains(newOutput[i]) ||
                      operand1.contains(newOutput[i])
                  ? 5.0
                  : 0.0),
          child: Text(
            newOutput[i],
            style: TextStyle(
              fontSize: 25.0,
              fontFamily: 'Nunito',
              color: operand1.contains(newOutput[i])
                  ? AppTheme().btnTxtColorSpecialTwo
                  : operand2.contains(newOutput[i])
                      ? AppTheme().btnTxtColorSpecial
                      : AppTheme().txtColor,
            ),
          ),
        ),
    ],
  );
}
