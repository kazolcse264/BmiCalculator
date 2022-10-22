import 'package:bmi_caculator/pages/show_result.dart';
import 'package:flutter/material.dart';

class BmiCalculate extends StatefulWidget {
  const BmiCalculate({Key? key}) : super(key: key);

  @override
  State<BmiCalculate> createState() => _BmiCalculateState();
}

class _BmiCalculateState extends State<BmiCalculate> {
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
  var height = 0.0, weight = 0.0, bmi = 0.0;
  var category = '';

  void _calculate() {
    height = double.parse(_heightController.text);
    weight = double.parse(_weightController.text);
    bmi = weight / (height * height);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('BMI CALCULATOR'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 200,
                  height: 200,
                  child: CircleAvatar(
                    backgroundImage:AssetImage('images/bmi_logo.jpg',),

                  )
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 18.0,top: 18.0),
                  child: TextField(
                    controller: _heightController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'Height',
                      hintText: 'Enter your height in meter unit',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 18.0),
                  child: TextField(
                    controller: _weightController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'Weight',
                      hintText: 'Enter your weight in kilogram unit',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    _calculate();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ShowResult(bmi: bmi),
                        ));
                  },
                  child: const Text(
                    'Calculate',
                    style: TextStyle(
                      fontSize: 20,

                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
