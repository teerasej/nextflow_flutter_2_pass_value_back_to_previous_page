import 'package:flutter/material.dart';
import 'package:nextflow_select_value_return_back/option_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nextflow: Select Value put back',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _selectedChoice = '...';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return OptionPage();
                    },
                  ),
                ).then(
                  (value) {
                    setState(() {
                      _selectedChoice = value;
                    });
                  },
                );
              },
              child: const Text('เลือกตัวเลือก'),
            ),
            Text(
              _selectedChoice,
              style: const TextStyle(
                fontSize: 60,
              ),
            )
          ],
        ));
  }
}
