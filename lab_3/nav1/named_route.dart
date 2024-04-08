import 'package:flutter/material.dart';

class NamedRoute extends StatelessWidget {
  const NamedRoute({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Navigation Demo",
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => const ScreenX(),
      //   '/y': (context) => const ScreenY(),
      // },
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (context) => const ScreenX());
          case 'y':
            return MaterialPageRoute(builder: (context) => const ScreenY());

          case 'z':
            return MaterialPageRoute(builder: (context) => const ScreenZ());
          case 'w':
            return MaterialPageRoute(builder: (context) => const ScreenY());
        }
        return null;
      },
      home: const ScreenX(),
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
                  settings: const RouteSettings(
                      arguments: "data from screen x", name: '/y')),
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

class ScreenZ extends StatelessWidget {
  const ScreenZ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen Z/Three"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Next"),
          onPressed: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => const ScreenY(),
              ),
            );
          },
        ),
      ),
    );
  }
}

class ScreenW extends StatelessWidget {
  const ScreenW({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen W/ Four"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Next"),
          onPressed: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => const ScreenY(),
              ),
            );
          },
        ),
      ),
    );
  }
}
