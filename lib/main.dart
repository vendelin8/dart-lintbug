import 'package:flutter/material.dart';

final GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();

Future<void> newPhoto() async {
  await Future.delayed(const Duration(seconds: 1));
  final context = navKey.currentContext;
  if (!(context?.mounted ?? false)) {
    return;
  }
  Navigator.of(context!).pop();
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: const MyHomePage(
          title: 'Flutter Demo Home Page',
        ),
        navigatorKey: navKey,
      );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) => const Scaffold(
        body: Text(
          'You have pushed the button this many times:',
        ),
      );
}
