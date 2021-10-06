import 'package:flutter/material.dart';

class OptionPage extends StatelessWidget {
  final List<String> _choices = ['A', 'B'];

  OptionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ตัวเลือก'),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          var choice = _choices[index];

          return ListTile(
            title: Text(choice),
            onTap: () {
              Navigator.pop(context, choice);
            },
          );
        },
        itemCount: _choices.length,
      ),
    );
  }
}
