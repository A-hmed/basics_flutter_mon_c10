import 'package:flutter/material.dart';
import 'package:mon_basics_flutter_c10/screens/calculator/calculator_button.dart';

class CalculatorScreen extends StatefulWidget {
  static const String routeName = "caluclator";

  const CalculatorScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return CalaculatorScreenState();
  }
}

class CalaculatorScreenState extends State {
  String result = "";
  String lhs = "";
  String savedOperator = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: Container(
                    child: Text(
                      result,
                      style: TextStyle(fontSize: 32),
                    ),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
              ],
            )),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CalculatorButton(
                    digit: "7",
                    onClick: onDigitClick,
                  ),
                  CalculatorButton(
                    digit: "8",
                    onClick: onDigitClick,
                  ),
                  CalculatorButton(
                    digit: "9",
                    onClick: onDigitClick,
                  ),
                  CalculatorButton(
                    digit: "+",
                    onClick: onOperatorClick,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CalculatorButton(
                    digit: "4",
                    onClick: onDigitClick,
                  ),
                  CalculatorButton(
                    digit: "5",
                    onClick: onDigitClick,
                  ),
                  CalculatorButton(
                    digit: "6",
                    onClick: onDigitClick,
                  ),
                  CalculatorButton(
                    digit: "-",
                    onClick: onOperatorClick,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CalculatorButton(
                    digit: "1",
                    onClick: onDigitClick,
                  ),
                  CalculatorButton(
                    digit: "2",
                    onClick: onDigitClick,
                  ),
                  CalculatorButton(
                    digit: "3",
                    onClick: onDigitClick,
                  ),
                  CalculatorButton(
                    digit: "*",
                    onClick: onOperatorClick,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CalculatorButton(
                    digit: ".",
                    onClick: onDigitClick,
                  ),
                  CalculatorButton(
                    digit: "0",
                    onClick: onDigitClick,
                  ),
                  CalculatorButton(
                    digit: "=",
                    onClick: onEqualClick,
                  ),
                  CalculatorButton(
                    digit: "/",
                    onClick: onOperatorClick,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onDigitClick(String digit) {
    if(result.contains(".") && digit == ".") return;
    result += digit;
    setState(() {});
  }

  void onOperatorClick(String clickedOperator) {
    if(savedOperator.isEmpty){
      savedOperator = clickedOperator;
      lhs = result;
    }else {
      lhs = calculate(lhs, savedOperator, result);
      savedOperator = clickedOperator;
    }
    result = "";
    print("lhs = $lhs, saved operator = $savedOperator");
    setState(() {});
  }

  void onEqualClick(_){
   result = calculate(lhs, savedOperator, result);
   lhs = "";
   savedOperator = "";
   setState(() {});
  }

  String calculate(String lhs, String operator, String rhs){
    double n1 = double.parse(lhs);
    double n2 = double.parse(rhs);
    if(operator == "+"){
      return "${n1 + n2}";
    }else if(operator == "-"){
      return "${n1 - n2}";
    }else if(operator == "*"){
      return "${n1 * n2}";
    }else {
      return "${n1 / n2}";
    }
  }


}
