import 'package:bmi_caculator/pages/model/bmi_data_generator.dart';
import 'package:flutter/material.dart';

class ShowResult extends StatelessWidget {
  var bmi;

  ShowResult({Key? key, required this.bmi}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Center(
                  child: Text(
                'Result ',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Center(
                  child: RichText(
                text: TextSpan(
                    text: 'BMI  =  ',
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlue,
                    ),
                    children: [
                      TextSpan(
                          text: '${bmi.toStringAsFixed(2)} ',
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                          )),
                      const TextSpan(
                          text: ' kg/m2',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.lightBlue,
                          )),
                    ]),
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: Center(
                  child:
                      RichText(
                        text: TextSpan(text: 'Your are in  ',
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.cyan,
                            ),
                        children: [
                          TextSpan(text: BmiDataGenerator.getCategory(bmi),style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                          ),)
                        ]),
                      )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Column(
                children: [
                  const ListTile(
                    leading: Text(
                      'Category',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue,
                      ),
                    ),
                    trailing: Text(
                      'BMI (kg/m2)',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  ...List.generate(
                    BmiDataGenerator.bmiDataMap.length,
                    (index) => ListTile(
                      leading: Text(
                        BmiDataGenerator.bmiDataMap.keys.toList()[index],
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      trailing: Text(
                        BmiDataGenerator.bmiDataMap.values.toList()[index],
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      tileColor: BmiDataGenerator.getCategory(bmi) ==
                              BmiDataGenerator.bmiDataMap.keys.toList()[index]
                          ? Colors.tealAccent
                          : null,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
