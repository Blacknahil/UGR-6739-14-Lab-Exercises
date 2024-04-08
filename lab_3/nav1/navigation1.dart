import 'package:flutter/material.dart';

class Nav1App extends StatelessWidget {
  const Nav1App({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Navigation Demo",
      home: ScreenX(),
    );
  }
}

class ScreenX extends StatelessWidget {
  const ScreenX({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen X"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Next"),
          onPressed: () async {
            final result = await Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => const ScreenY(),
                  settings:
                      const RouteSettings(arguments: "data from screen x")),
            );
          },
        ),
      ),
    );
  }
}

class ScreenY extends StatelessWidget {
  const ScreenY({super.key});

  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)!.settings.arguments as String;
    print(data);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen Y"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Go Back"),
          onPressed: () {
            Navigator.pop(context, 'Yes');
          },
        ),
      ),
    );
  }
}
