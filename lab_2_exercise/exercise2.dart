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
          title: Container(
              child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                Icon(Icons.arrow_back, size: 30.0),
                Text("Cart")
              ])),
        ),
        body: Column(children: [
          const Column(children: [
            Icon(
              Icons.shopping_basket,
              size: 20.0,
            ),
            Text("Shopping Cart",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                )),
            Text(
              "Verify your Quantity and click checkout",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            )

            // Image(
            //   image: NetworkImage(
            //       "https://t4.ftcdn.net/jpg/01/04/78/75/360_F_104787586_63vz1PkylLEfSfZ08dqTnqJqlqdq0eXx.jpg"),
            //   width: 300,
            //   height: 300,
            // ),
          ]),
          Container(
            width: 300,
            height: 300,
            child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: const Column(
                  children: [
                    Image(
                        image: NetworkImage(
                            "https://www.budgetbytes.com/wp-content/uploads/2013/07/Creamy-Spinach-Tomato-Pasta-bowl-500x500.jpg"),
                        width: 80,
                        height: 80),
                    Text("Calas"),
                    Text("\$15.00"),
                    Image(
                        image: NetworkImage(
                            "https://www.budgetbytes.com/wp-content/uploads/2013/07/Creamy-Spinach-Tomato-Pasta-bowl-500x500.jpg"),
                        width: 80,
                        height: 80),
                    Text("Angel Hair"),
                    Text("`salmon"),
                    Text("\$22.99"),
                  ],
                ),
                color: Colors.lightBlueAccent.withOpacity(0.1)),
          ),
          Container(
            child: Column(children: [
              Text("Subtotal"),
              Text("\$60.98"),
              Text("Tax(10.0%)"),
              Text(
                "\$6.10",
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      elevation: 3,
                      side: BorderSide(width: 3, color: Colors.brown)),
                  child: Text("checkout"))
            ]),
          ),
        ]));
  }
}

class children {
  const children({required double size});
}
