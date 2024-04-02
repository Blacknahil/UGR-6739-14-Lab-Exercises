import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("BMI Calculator",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              )),
        ),
        body: Column(children: [
          Container(
            child: Row(
              children: [
                Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: const Column(
                      children: [Icon(Icons.male), Text("Male")],
                    )),
                Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: const Column(
                      children: [Icon(Icons.female), Text("FeMale")],
                    )),
                Row(
                  children: [
                    Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: const Column(
                          children: [
                            Icon(Icons.female),
                            Text("Height"),
                            Slider(
                              min: 0,
                              max: 100,
                              value: 10.0,
                              onChanged: (value) {
                                setState(() {
                                  currentSliderValue = 10;
                                });
                              },
                            ),
                          ],
                        )),
                  ],
                )
              ],
            ),
          )
        ]));
  }
}
