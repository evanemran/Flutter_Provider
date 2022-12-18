import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_provider/models/MyItem.dart';
import 'package:flutter_provider/models/MyList.dart';
import 'package:flutter_provider/pages/HomePage.dart';
import 'package:provider/provider.dart';

import 'MyCounter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider.value(
        value: MyCounter(),
      ),
      ChangeNotifierProvider.value(
        value: MyList(),
      )
    ],
    child: MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const HomePage(),
    ),);
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key, required this.title});

  final String title;
  var counter = 0;

  void _incrementCounter(BuildContext context) {
    Provider.of<MyCounter>(context, listen: false).incrementCounter();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${Provider.of<MyCounter>(context).getCount()}',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _incrementCounter(context),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
