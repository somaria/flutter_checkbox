import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Check Box',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Check Box'),
          ),
          body: MyStatefulWidget(),
        ));
  }
}

class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool checkBoxState = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Checkbox(
            value: checkBoxState, onChanged: (bool e) => doSomething()),
      ),
    );
  }

  void doSomething() {
    print('do something');
    setState(() {
      if (checkBoxState) {
        checkBoxState = false;
      } else {
        checkBoxState = true;
      }
    });
  }
}
