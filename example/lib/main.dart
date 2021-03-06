import 'package:any_widget_marquee/any_widget_marquee.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Column(
              children: <Widget>[
                Container(
                  height: 50,
                  child: AnyMargueeWidget(
                    speedRate: 20,
                    child: Text(
                      "Text With Default Configuration",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),

                Container(
                  height: 50,
                  child: AnyMargueeWidget(
                    marginLeft: 100,
                    speedRate: 20,
                    child: Text(
                      "Text With Left Align Margin",
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ),

                Container(
                  height: 50,
                  child: AnyMargueeWidget(
                    marginLeft: 100,
                    speedRate: 20,
                    betweenSpacing: 100,
                    child: Text(
                      "Spacing Between Marguee Effects",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),

                Container(
                  height: 50,
                  child: AnyMargueeWidget(
                    marginLeft: 100,
                    speedRate: 10,
                    child: Text(
                      "Effect Speed",
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
                ),
//
                Container(
                  height: 50,
                  child: AnyMargueeWidget(
                    marginLeft: 100,
                    speedRate: 50,
                    child: Text(
                      "Faster Speed",
                      style: TextStyle(color: Colors.yellow),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  child: AnyMargueeWidget(
                    marginLeft: 100,
                    speedRate: 100,
                    child: Row(
                      children: [
                        Text("Marquee with a Row of text and Icon"),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.access_alarms,
                          size: 30,
                        ),
                      ],
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
