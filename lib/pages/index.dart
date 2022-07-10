import 'package:kakula/other/cal.dart';
import 'Package:flutter/material.dart';
import 'package:kakula/other/widget.dart';
import 'package:kakula/other/color_theme.dart';

//=================================================
// HOME PAGE
//=================================================
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //============================================================
    // THE BTN VALUES AND COLORS IN A LIST / MAP
    //============================================================
    List<Map<String, Object>> btnValueList = [
      {'value': 'AC', 'color': AppTheme().btnTxtColorSpecialTwo},
      {'value': '()', 'color': AppTheme().btnTxtColorSpecialTwo},
      {'value': '%', 'color': AppTheme().btnTxtColorSpecialTwo},
      {'value': '/', 'color': AppTheme().btnTxtColorSpecial},
      {'value': '7', 'color': AppTheme().btnTxtColor},
      {'value': '8', 'color': AppTheme().btnTxtColor},
      {'value': '9', 'color': AppTheme().btnTxtColor},
      {'value': 'X', 'color': AppTheme().btnTxtColorSpecial},
      {'value': '4', 'color': AppTheme().btnTxtColor},
      {'value': '5', 'color': AppTheme().btnTxtColor},
      {'value': '6', 'color': AppTheme().btnTxtColor},
      {'value': '-', 'color': AppTheme().btnTxtColorSpecial},
      {'value': '1', 'color': AppTheme().btnTxtColor},
      {'value': '2', 'color': AppTheme().btnTxtColor},
      {'value': '3', 'color': AppTheme().btnTxtColor},
      {'value': '+', 'color': AppTheme().btnTxtColorSpecial},
      {'value': 'C', 'color': AppTheme().btnTxtColor},
      {'value': '0', 'color': AppTheme().btnTxtColor},
      {'value': '.', 'color': AppTheme().btnTxtColor},
      {'value': '=', 'color': AppTheme().btnTxtColorSpecial}
    ];

    return Scaffold(
      backgroundColor: AppTheme().bgColor,
      appBar:
          CalAppBar(onPressed: (value) => setState(() => lightTheme = value)),
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  alignment: Alignment.bottomRight,
                  padding: const EdgeInsets.fromLTRB(5.0, 25.0, 5.0, 0.0),
                  child: SingleChildScrollView(
                    reverse: true,
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                    child: calTextSpan(),
                  ),
                ),
                Container(
                  width: double.infinity,
                  alignment: Alignment.topRight,
                  padding: const EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 5.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Text(
                      answer,
                      style: TextStyle(
                        color: AppTheme().txtColorAnswer,
                        fontSize: 60.0,
                        fontFamily: 'Nunito',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 25.0),
            decoration: BoxDecoration(
              color: AppTheme().secondaryColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
            ),
            child: Wrap(
              spacing: 20.0,
              runSpacing: 20.0,
              alignment: WrapAlignment.center,
              children: [
                for (int i = 0; i < btnValueList.length; i++)
                  BtnWidget(
                    btnColor: btnValueList[i]['color'] as Color,
                    btnValue: btnValueList[i]['value'].toString(),
                    onPressed: (value) =>
                        setState(() => Calculations().buttonPressed(value)),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
