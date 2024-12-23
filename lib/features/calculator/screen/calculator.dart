import 'dart:math';
import 'package:flutter/material.dart';
import 'package:login_signup/core/style/heading_style.dart';
import 'package:login_signup/core/widgets/input_field.dart';
import 'package:login_signup/core/widgets/submit_button.dart';
import 'package:login_signup/features/calculator/model/calculator_list.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

TextEditingController heightController = TextEditingController();
TextEditingController weightController = TextEditingController();

class _CalculatorScreenState extends State<CalculatorScreen> {
  dynamic bmuFun() {
    double? var1 = double.tryParse(heightController.text);
    double? var2 = double.tryParse(weightController.text);

    if (var1 == null || var2 == null) {
      return '';
    }
    double mass = var2 / pow(var1 / 100, 2);
    if (mass < 16) {
      return 'كتلة الجسم :  ${mass.toStringAsFixed(2)} \n نحافة شديدة';
    } else if (mass < 25) {
      return 'كتلة الجسم :  ${mass.toStringAsFixed(2)} \n  الوزن طبيعي';
    } else if (mass < 30) {
      return 'كتلة الجسم :  ${mass.toStringAsFixed(2)} \n  زيادة الوزن';
    } else if (mass < 40) {
      return 'كتلة الجسم :  ${mass.toStringAsFixed(2)} \n  سمنة من الفئة الثانية';
    } else {
      return 'كتلة الجسم :  ${mass.toStringAsFixed(2)} \n  سمنة من الفئة الثالثة';
    }
  }

  final GlobalKey<FormState> formkey = GlobalKey();
  @override
  void initState() {
    super.initState();
    heightController.addListener(() {
      setState(() {});
    });
    weightController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    heightController.dispose();
    weightController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'حاسبة الكتلة',
          style: headingStyle(),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Form(
            key: formkey,
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SizedBox(
                  height: 200,
                  child: ListView.builder(
                      itemCount: calcInfo.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 12),
                          child: CustomInputField(f: calcInfo[index]),
                        );
                      }),
                )),
          ),
          SubmitButton(btnText: 'احسب', formKey: formkey),
          Text(
            bmuFun().toString(),
            style: headingStyle(),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
