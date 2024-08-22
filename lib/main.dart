import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => const MaterialApp(
          home: MyHomePage(
        title: 'Flutter Demo Home Page',
      ));
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

  Future<int?> test() async {
    await Future.delayed(const Duration(seconds: 1));
    return 1;
  }

  Future<void> newPhoto() async {
    await showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
              actions: [
                TextButton(
                  child: const Text('Choose a file'),
                  onPressed: () async {
                    int? result = await test();
                    if (!mounted) return;

                    if (result == null) {
                      Navigator.of(context).pop();
                      return;
                    }
                    Navigator.of(context).pop(result);
                  },
                ),
              ],
            ));
  }
}
