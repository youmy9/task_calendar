import 'dart:collection';

import 'package:flutter/material.dart';

import 'nav.dart';
import 'Button.dart';

class homePage extends StatefulWidget {
  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  final List<String> buttons = [
    '7', '6', '5', '4', '3', '2', '1',
    '14', '13', '12', '11', '10', '9', '8',
    '21', '20', '19', '18', '17', '16', '15',
    '28','27', '26', '25', '24', '23', '22',
    '','','','','31', '30', '29',
  ];
  bool isOperator(String x) {
    if (x == '2' ||
        x == '9' ||
        x == '16' ||
        x == '23' ||
        x == '30' ||
        x == '6' ||
        x == '13' ||
        x == '20' ||
        x == '27'

    )

    {
      return true ;
    }

    return false;
  }

  bool isOperato(String x) {
    if (x == '3' ||
        x == '10' ||
        x == '17' ||
        x == '24' ||
        x == '31' ||
        x == '5' ||
        x == '12' ||
        x == '19' ||
        x == '26') {
      return true;
    }

    return false;
  }



  HashSet selectedItem = new HashSet();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Column(
              children: [
                UpperNavBar(),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Sat',
                      style: TextStyle(fontSize: 20, color: Colors.black54),
                    ),
                    Text(
                      'Sun',
                      style: TextStyle(fontSize: 20, color: Colors.indigo),
                    ),
                    Text(
                      'Mon',
                      style: TextStyle(fontSize: 20, color: Colors.indigo),
                    ),
                    Text(
                      'Tue',
                      style: TextStyle(fontSize: 20, color: Colors.black54),
                    ),
                    Text(
                      'Wed',
                      style: TextStyle(fontSize: 20, color: Colors.indigo),
                    ),
                    Text(
                      'Thu',
                      style: TextStyle(fontSize: 20, color: Colors.indigo),
                    ),
                    Text(
                      'Fri',
                      style: TextStyle(fontSize: 20, color: Colors.black54),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(17.0),
                child: Container(
                  child: GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: buttons.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 7),
                      itemBuilder: (BuildContext context, int index ,) {
                        return MyButton(
                          color: isOperator(buttons[index]) ? Colors.green : isOperato(buttons[index]) ? Colors.red : Colors.white,
                          textColor: isOperator(buttons[index]) ? Colors.white : isOperato(buttons[index]) ? Colors.white : Colors.black38,
                          buttonText: buttons[index],
                        );


                        // return MyButton(
                        //   color:isOperato(buttons[index])
                        //       ? Colors.red
                        //       : Colors.white,
                        //   textColor: isOperato(buttons[index])
                        //       ? Colors.white
                        //       : Colors.black38,
                        //   buttonText: buttons[index],
                        //
                        //
                        // );
                        //
                        //
                        //    return MyButton(
                        //      color: isOperator(buttons[index])
                        //          ? Colors.green
                        //          : Colors.white,
                        //      textColor: isOperator(buttons[index])
                        //          ? Colors.white
                        //          : Colors.black38,
                        //      buttonText: buttons[index],
                        //    );



                      }  ),
                ),
              ),
            )
          ],
        ),
      ),

    );


  }



}
